package com.emergentes.modelo;

import java.util.ArrayList;
import java.util.Iterator;

public class GestorTareas {
    private ArrayList<Tarea> listaTareas;
    
    public GestorTareas(){
        this.listaTareas = new ArrayList<Tarea>();
    }

    public ArrayList<Tarea> getListaTareas() {
        return listaTareas;
    }

    public void setListaTareas(ArrayList<Tarea> listaTareas) {
        this.listaTareas = listaTareas;
    }
    
    public void insertarTarea(Tarea item){
        this.listaTareas.add(item);
    }
    
    public void modificarTarea(int pos, Tarea item){
        this.listaTareas.set(pos, item);
    }
    
    public void eliminarTarea(int pos){
        this.listaTareas.remove(pos);
    }
    
    public int obtieneId(){
        int idAux = 0;
        for(Tarea item: this.listaTareas){
            idAux = item.getId();
        }
        return idAux+1;
    }
    
    public int ubicarTarea(int id){
        int pos = -1;
        Iterator<Tarea> it = this.listaTareas.iterator();
        
        while(it.hasNext()){
            pos++;
            Tarea aux = it.next();
            if(aux.getId() == id){
                break;
            }
        }
        return pos;
    }
}
