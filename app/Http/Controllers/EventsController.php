<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events;

class EventsController extends Controller
{
    public function index()
    {
    	$events = Events::all();
    	return view('pages.events.index', ['events' => $events]);
    }

    public function create()
    {
    	return view('pages.events.add');
    }
	
	public function store(Request $request)
    {
        $this->validate($request, [
            'nom' => 'required|string|max:20',
            'description' => 'required|string|min:4',
        ]);


        $name = $request['nom'];
        // File upload
        if ($request->hasFile('event_pic')) {
            //file name with extension
            $fileNameWithExt = $request->file('event_pic')->getClientOriginalName();
            //file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //extension
            $extension = $request->file('event_pic')->getClientOriginalExtension();
            $fileToStore = str_replace(' ', '', $name).'.'.$extension;

            $path = $request->file('event_pic')->storeAs('public/images/events/', $fileToStore);
        }else{
            $fileToStore = 'noimage.jpg';
        }



        $event = new Events;
        $event->event_name = $name;
		$event->event_description = $request['description'];
		$event->event_pic = $fileToStore;
        $event->save();

        return redirect('events/create')->with('success', 'event added');

        
    }

    public function show($id)
    {
        return redirect('events')->with('success', 'no ideas for now');
    }

    public function edit($id)
    {
    	$e = Events::find($id);
    	return view('pages.events.edit')->with('event', $e);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nom' => 'required|string|max:20',
            'description' => 'required|string|min:4',
        ]);

        $name = $request['nom'];
        // File upload
        if ($request->hasFile('event_pic')) {
            //file name with extension
            $fileNameWithExt = $request->file('event_pic')->getClientOriginalName();
            //file name
            $fileName = pathinfo($fileNameWithExt, PATHINFO_FILENAME);
            //extension
            $extension = $request->file('event_pic')->getClientOriginalExtension();
            $fileToStore = str_replace(' ', '', $name).'.'.$extension;

            $path = $request->file('event_pic')->storeAs('public/images/events/', $fileToStore);
        }else{
            $fileToStore = 'noimage.jpg';
        }


        $event = Events::find($id);
        $event->event_name = $name;
		$event->event_description = $request['description'];
		$event->event_pic = $fileToStore;
        $event->save();

        return redirect('events/'.$id.'/edit')->with('success', 'event updated');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $event = Events::find($id);
        $event->delete();
        return redirect('events')->with('success', 'event deleted');
    }
}
