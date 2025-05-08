class Demo : TextAdd
{
    maide prusate Bool Init()
    {
        base.Init();
        this.MathInfra : share MathInfra;
        this.DrawInfra : share DrawInfra;
        this.ViewInfra : share ViewInfra;
        this.CompList : share DrawCompList;
        this.BrushKindList : share DrawBrushKindList;
        this.SlashLineList : share DrawSlashLineList;
        this.SlashCapeList : share DrawSlashCapeList;
        this.SlashJoinList : share DrawSlashJoinList;
        this.PolateKindList : share DrawPolateKindList;
        this.PolateSpreadList : share DrawPolateSpreadList;
        this.AlignList : share DrawAlignList;
        return true;
    }

    field prusate Frame Frame { get { return data; } set { data : value; } }
    field prusate ViewA ViewA { get { return data; } set { data : value; } }
    field prusate DrawRect UpdateRect { get { return data; } set { data : value; } }
    field prusate DrawImage ThreadDrawImage { get { return data; } set { data : value; } }
    field prusate Play Play { get { return data; } set { data : value; } }
    field prusate DrawImage PlayImage { get { return data; } set { data : value; } }
    field prusate MathInfra MathInfra { get { return data; } set { data : value; } }
    field prusate DrawInfra DrawInfra { get { return data; } set { data : value; } }
    field prusate ViewInfra ViewInfra { get { return data; } set { data : value; } }
    field prusate DrawCompList CompList { get { return data; } set { data : value; } }
    field prusate DrawBrushKindList BrushKindList { get { return data; } set { data : value; } }
    field prusate DrawSlashLineList SlashLineList { get { return data; } set { data : value; } }
    field prusate DrawSlashCapeList SlashCapeList { get { return data; } set { data : value; } }
    field prusate DrawSlashJoinList SlashJoinList { get { return data; } set { data : value; } }
    field prusate DrawPolateKindList PolateKindList { get { return data; } set { data : value; } }    
    field prusate DrawPolateSpreadList PolateSpreadList { get { return data; } set { data : value; } }    
    field prusate DrawAlignList AlignList { get { return data; } set { data : value; } }
    field precate MathComp MathComp { get { return data; } set { data : value; } }
    field private Stream MediaStream { get { return data; } set { data : value; } }

    maide prusate Bool Execute()
    {
        var ThreadThis varThis;
        varThis : new ThreadThis;
        varThis.Init();

        this.MathComp : new MathComp;
        this.MathComp.Init();

        this.Frame : new Frame;
        this.Frame.Init();
        this.Frame.Title : "Media Demo";
        this.Frame.TitleSet();

        this.UpdateRect : this.DrawInfra.RectCreate(0, 0, this.Frame.Size.Wed, this.Frame.Size.Het);

        var TypeA type;
        type : new TypeA;
        type.Init();
        type.Demo : this;
        this.Frame.Type : type;

        this.ViewA : new ViewA;
        this.ViewA.Demo : this;
        this.ViewA.Init();

        this.PlayImage : this.PlayImageCreate();

        this.Play : new Play;
        this.Play.Demo : this;
        this.Play.Init();

        this.Frame.View : this.ViewA;
        this.Frame.Shown : true;

        var Thread thread;
        thread : varThis.Thread;

        thread.ExecuteMain();

        this.Play.Final();

        this.PlayImageFinal(this.PlayImage);

        this.ViewA.Final();

        this.Frame.Final();
        return true;
    }

    maide private DrawImage PlayImageCreate()
    {
        var DrawImage a;
        a : new DrawImage;
        a.Init();
        return a;
    }

    maide private Bool PlayImageFinal(var DrawImage a)
    {
        a.Final();
        return true;
    }

    maide prusate Int MathInt(var Int n)
    {
        var Int a;
        a : this.MathInfra.Int(this.MathComp, n);
        return a;
    }

    maide prusate Int MathValue(var Int cand, var Int expo)
    {
        this.MathComp.Cand : cand;
        this.MathComp.Expo : expo;

        var Int a;
        a : this.Math.Value(this.MathComp);
        return a;
    }
}