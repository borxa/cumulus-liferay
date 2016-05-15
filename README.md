# cumulus-liferay
Set of portlets for integrate cumulus wheather software in Liferay Portal
http://borxa.github.io/cumulus-liferay/

For build this software you needs a profile in your maven settings.xml like this:
```
<profile>
    <id>liferay</id>
    <activation>
        <activeByDefault>true</activeByDefault>
    </activation>
    <properties>
        <liferay.app.server.deploy.dir>
            ../../glassfish4/glassfish/domains/domain1/applications
        </liferay.app.server.deploy.dir>

        <liferay.app.server.lib.global.dir>
            ../../glassfish4/glassfish/domains/domain1/lib
        </liferay.app.server.lib.global.dir>

        <liferay.app.server.portal.dir>
            ../../glassfish4/glassfish/domains/domain1/applications/liferay-portal
        </liferay.app.server.portal.dir>

        <liferay.auto.deploy.dir>
            ../../glassfish4/deploy
        </liferay.auto.deploy.dir>

        <liferay.version>
            6.2.5
        </liferay.version>

        <liferay.maven.plugin.version>
            6.2.5
        </liferay.maven.plugin.version>
    </properties>
</profile>
```
