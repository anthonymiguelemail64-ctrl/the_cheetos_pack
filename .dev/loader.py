import tkinter
from tkinter import filedialog
from tkinter import messagebox
from tkinter import simpledialog
import json
import os
import subprocess
import sys
from pathlib import Path
import shutil

# Variavéis

home = os.path.expanduser('~')
resctrl = False
cpath = home
source = Path(__file__).resolve().parent.parent
ignore = ['.git', '.dev']
print(source)
path = {
}

cores = {
    'bg' : '#171717',
    'butt' : '#242424',
    'danger' : '#700d0d'
}

print(f'\nLoader V0.1 iniciado!\nFonte: {source}')

# Funções ---

def ignoref(dir, cont):
    return [item for item in cont if item in ignore]

def save():
    global path

    if os.path.isfile('loadermem.txt'):
        print('\nA memória foi encontrada com sucesso!')

    else:
        print('ERRO: Memória ausente.\nCriando uma nova memória...')

    with open('loadermem.txt', 'w') as mem:
        json.dump(path, mem, indent=2)

    print(f'Memoria salva no disco rídigo.\nMemória escrita no disco rígido:\n{json.dumps(path,indent=2)}')

def load():
    global path

    if os.path.isfile('loadermem.txt'):
        print('\nA memória foi encontrada com sucesso!')

        with open('loadermem.txt', 'r') as mem:
            path = json.load(mem)
        
        print(f'Memoria salva no disco rídigo.\nMemória escrita no disco rígido:\n{json.dumps(path,indent=2)}')

    else:
        print('ERRO: Memória ausente.\nOperação abortada.')

def novo_atalho():
    global path
    global nome
    nome = simpledialog.askstring("Insira o nome", "Escolha o nome do atalho",initialvalue='Atalho')
    if nome:
        if nome in path.keys():
            print('Esse atalho já existe!')
            result = messagebox.askyesno(f'"{nome}" já existe!', f'O atalho "{nome}" já existe. Deseja sobre escrevê-lo?')
            if not result:
                nome = nome + f' {len(path)-1}'
        path[nome] = cpath

    print(f'Caminho salvo.\nEstado atual da memória:\n{json.dumps(path,indent=2)}')
    
    save()
    upui()

def reset():
    result = messagebox.askyesno(f'Reiniciar?', f'Tem certeza de que quer isso?')
    if result:
        print('Reiniciando...')
        exec = sys.executable
        os.execv(exec, [exec] + sys.argv)

def apontar_path():
    global cpath
    result = filedialog.askdirectory(initialdir=home,title='Escolha o diretório do datapack')
    if result:
        cpath = result
    upui()

def update():
    shutil.copytree(source, f'{cpath}/{source.name}', ignore=ignoref, dirs_exist_ok=True)

def getatalho():
    global cpath
    cur = lista.curselection()
    if cur:
        nm = lista.get(cur)
        cpath = path[nm]
        print(f'O endereço {path[nm]} foi colocado no cursor')

    upui()

def upui():
    global cpath_var
    global cpath
    global lista

    if cpath == None:
        cpath_var.set('Nenhum caminho selecionado!')
    else:
        cpath_var.set(f'Cursor: {cpath}')

    lista.delete(0, tkinter.END)

    for atalho in path.keys():
        lista.insert(tkinter.END, atalho)

def chnm():
    global lista
    global path
    nome = simpledialog.askstring("Insira o nome", "Escolha o novo nome do atalho")
    if nome != None:

        if nome in path.keys():
            messagebox.showerror(f'"{nome}" já existe!', 'O nome inserido já existe!')
            nome = nome + f' {len(path)-1}'
        cur = lista.curselection()

        if cur:
            nm = lista.get(cur)
            kv = path[nm]
            path.pop(nm)
            path[nome] = kv

    print(f'\nO item {nm} foi deletdo\nO item {nome} foi criado com {kv} dentro de si')
    save()
    upui()

def delatt():
    global lista
    global path
    cur = lista.curselection()
    if cur:
        nm = lista.get(cur)
        path.pop(nm)

    print(f'\nO item {nm} foi deletdo')

    save()
    upui()

def copypa1():
    global win
    cur = lista.curselection()

    if cur:
        nm = lista.get(cur)
        win.clipboard_clear()
        win.clipboard_append(nm)

def copypa2():
    global win
    cur = lista.curselection()

    if cur:
        nm = path[lista.get(cur)]
        win.clipboard_clear()
        win.clipboard_append(nm)

def openp():
    global cpath

    subprocess.run(["xdg-open", cpath])

# --- Script

load()

win = tkinter.Tk()
win.title('Datapack simple loader')
win.geometry('700x600')

win.configure(bg=cores['bg'])

win.columnconfigure(0, weight=1)
win.columnconfigure(1, weight=1)
win.columnconfigure(2, weight=1)
win.rowconfigure(0, weight=1)

# UI

# Botões

save_butt = tkinter.Button(win, text='Novo atalho', command=novo_atalho, bg=cores['butt'], fg='white')
reset_butt = tkinter.Button(win, text='Reiniciar', command=reset, bg=cores['danger'], fg='white')
slct_path = tkinter.Button(win, text='Abrir um diretório', command=apontar_path, bg=cores['butt'], fg='white')
update = tkinter.Button(win, text='Atualizar', command=update, bg=cores['butt'], fg='white')
slct_att = tkinter.Button(win, text='Selecionar', command=getatalho, bg=cores['butt'], fg='white')
sv_butt = tkinter.Button(win, text='Salvar', command=save, bg=cores['butt'], fg='white')

nmch_att = tkinter.Button(win, text='Mudar o nome', command=chnm, bg=cores['butt'], fg='white')
del_butt = tkinter.Button(win, text='Apagar', command=delatt, bg=cores['butt'], fg='white')

cop_butt = tkinter.Button(win, text='Copiar o nome', command=copypa1, bg=cores['butt'], fg='white')
cop2_butt = tkinter.Button(win, text='Copiar o endereço', command=copypa2, bg=cores['butt'], fg='white')
opp_butt = tkinter.Button(win, text='Abrir no gerenciador de arquivos', command=openp, bg=cores['butt'], fg='white')



# Labels

cpath_var = tkinter.StringVar()
cpath_lab = tkinter.Label(win, textvariable=cpath_var, font=('Arial', 12), fg='white', bg=cores['butt'], wraplength=250, justify="left")

title = tkinter.Label(win, text='Loader', font=('Arial', 48), fg='white', bg=cores['butt'])

# Lista

lista = tkinter.Listbox(win)

title.grid(row=0, column=0, pady=10, columnspan=3, sticky='snew')

slct_path.grid(row=1, column=0, pady=5, padx=5)
update.grid(row=5, column=0, pady=5, padx=5)
opp_butt.grid(row=2, column=0, pady=5, padx=5)
cpath_lab.grid(row=3, column=0, pady=5, padx=5, sticky='snew')

lista.grid(row=1, column=1, pady=5, padx=5, sticky='snew', rowspan=5, columnspan=2)

save_butt.grid(row=6, column=1, pady=5)
cop_butt.grid(row=8, column=1, pady=5)

del_butt.grid(row=6, column=2, pady=5, padx=5)
cop2_butt.grid(row=7, column=2, pady=5, padx=5)
slct_att.grid(row=8, column=2, pady=5, padx=5)

nmch_att.grid(row=7, column=1, pady=5, padx=5)

reset_butt.grid(row=10, column=0, pady=5, padx=5)
sv_butt.grid(row=9, column=0, pady=5, padx=5)

upui()

win.mainloop()