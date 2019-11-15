package ${packageName};

import com.nexacro.NexacroResourceManager;
import com.nexacro.NexacroUpdatorActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class ${nexacroActivityClass} extends NexacroUpdatorActivity {

    public ${nexacroActivityClass}() {
        super();

        setBootstrapURL("${bootstrapURL}");
        setProjectURL("${projectURL}");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        NexacroResourceManager.createInstance(this);
        NexacroResourceManager.getInstance().setDirect(false);

        Intent intent = getIntent();
        if(intent != null) {
            String bootstrapURL = intent.getStringExtra("bootstrapURL");
            String projectUrl = intent.getStringExtra("projectUrl");
            if(bootstrapURL != null) {
                setBootstrapURL(bootstrapURL);
                setProjectURL(projectUrl);
            }
        }

        super.onCreate(savedInstanceState);
    }

    @Override
    public void setContentView(View view) {
        super.setContentView(view);
    }

}