class TypeA : Type
{
    field prusate Demo Demo { get { return data; } set { data : value; } }
    field prusate Int TitleIndex { get { return data; } set { data : value; } }

    maide prusate Bool Event(var TypeIndex index, var Bool value)
    {
        var TypeIndex a;
        a : index;

        var Bool o;
        o : value;

        var TypeIndexList d;
        d : this.Demo.Frame.Type.IndexList;

        inf (a = d.AlphaB & o)
        {
            this.Demo.Frame.Close();

            this.Demo.ThreadThis.Thread.Exit(0);
        }

        var Bool b;
        b : false;

        var Int k;

        inf (a = d.AlphaJ & o)
        {
            k : this.Demo.ViewA.Pos.Col;
            k : k - 10;
            this.Demo.ViewA.Pos.Col : k;
            b : true;
        }
        inf (a = d.AlphaL & o)
        {
            k : this.Demo.ViewA.Pos.Col;
            k : k + 10;
            this.Demo.ViewA.Pos.Col : k;
            b : true;
        }
        inf (a = d.AlphaI & o)
        {
            k : this.Demo.ViewA.Pos.Row;
            k : k - 10;
            this.Demo.ViewA.Pos.Row : k;
            b : true;
        }
        inf (a = d.AlphaK & o)
        {
            k : this.Demo.ViewA.Pos.Row;
            k : k + 10;
            this.Demo.ViewA.Pos.Row : k;
            b : true;
        }

        inf (a = d.AlphaU & o)
        {
            var Bool bo;
            bo : this.Demo.ViewA.Shown;
            bo : ~bo;
            this.Demo.ViewA.Shown : bo;
            b : true;
        }

        inf (a = d.AlphaY & o)
        {
            this.Demo.ViewA.RotateValue : this.Demo.ViewA.RotateValue + 1;
            b : true;
        }

        inf (a = d.AlphaH & o)
        {
            var Bool baa;
            baa : this.Demo.Play.AudioOut.Mute;
            baa : ~baa;
            this.Demo.Play.AudioOut.Mute : baa;
        }

        var Int scaleFactor;
        scaleFactor : bit <(1, 20);

        var Int ao;

        inf (a = d.AlphaC & o)
        {
            k : this.Demo.Play.AudioOut.Volume;

            ao : this.Demo.MathValue(scaleFactor / 16, 0 - 20);

            k : this.Demo.Math.Add(k, ao);

            this.Demo.Play.AudioOut.Volume : k;
        }

        inf (a = d.AlphaV & o)
        {
            k : this.Demo.Play.AudioOut.Volume;

            ao : this.Demo.MathValue(scaleFactor / 16, 0 - 20);

            k : this.Demo.Math.Sub(k, ao);

            this.Demo.Play.AudioOut.Volume : k;
        }

        inf (a = d.AlphaE & o)
        {
            this.Demo.Play.Execute();
        }

        inf (a = d.AlphaR & o)
        {
            this.Demo.Play.Pause();
        }

        inf (a = d.AlphaG & o)
        {
            var Int kaaa;
            kaaa : this.Demo.Play.Pos;

            var Int kkaa;
            kkaa : kaaa + 10 * 1000;

            var Int time;
            time : this.Demo.Play.Time;
            inf (time < kkaa)
            {
                kkaa : time;
            }

            this.Demo.Play.Pos : kkaa;
        }

        inf (b)
        {
            this.Demo.ViewInfra.AssignDrawRectValue(this.Demo.UpdateRect, this.Demo.Frame.View.Area);
            
            this.Demo.Frame.Update(this.Demo.UpdateRect);
        }

        return true;
    }
}