<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Inscription;

class InscriptionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $inscr = Inscription::all();
        return view('pages.inscriptions.index')->with('inscr', $inscr);   
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.inscription');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nom' => 'required|string|min:4|max:15',
            'postNom' => 'required|string|min:4|max:15',
            'preNom' => 'required|string|min:4|max:15',
            'naissance' => 'required|date',
            'section' => 'required|string|min:7|max:11',
            'sexe' => 'required||string|max:1'
        ]);

        $student = new Inscription;
        $student->nom = $request['nom'].' '.$request['postNom'].' '.$request['preNom'];
        $student->naissance = $request['naissance'];
        $student->section = $request['section'];
        $student->sexe = $request['sexe'];
        $student->save();

        return redirect('/inscription/create')->with('success', 'thank you "'.$student->nom.'" for your pre-registration, you information has been saved!!! please pass on our office with all your documents and required fees to complete it');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
