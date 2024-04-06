package;

import pi_xy.imageAbstracts.PeoteTexture;

import lime.app.Application;
import lime.ui.Window;

import peote.view.*;

class Main extends Application {
    override function onWindowCreate(): Void {
        switch( window.context.type ){
            case WEBGL, OPENGL, OPENGLES:
                try startSample( window )
                catch (_) trace(CallStack.toString(CallStack.exceptionStack()), _);
            default: throw("Sorry, only works with OpenGL.");
        }
    }
    public function startSample( window: lime.ui.Window ){
        new pi_xy.application.PeoteTest( window );
    }
    override function onPreloadComplete():Void {}
    override function update(deltaTime:Int):Void {}
}
