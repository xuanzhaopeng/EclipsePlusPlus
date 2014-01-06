Eclipse++
=========

Web Application to achieve the automated build of any Eclipse customized
distribution, by letting end users simply select features they are interested in. The build must rely on the procedure set up by CBI and projects complying with it. A feature model [1] of all Eclipse projects should help describe the Eclipse ecosystem of plugins from end users’ point of view. A typical view is the one provided by P2’s User Interface (UI) when you want to install a new plugin.
The end user must be able to select the features (or plugins) he is interested in on a simple form. Validating the selection must trigger the build of the corresponding customized Eclipse distribution, using Maven, Tycho, Nexus, Hudson and a cloud infrastructure. A cache system must help prevent the build of the same distribution asked for by different users, with respect to the freshness of the underlying plugins.

Based on the principal of our project: Feature Model and Software Product Line,
we decide to at first analyze and separate eclipse system into features, then realize each features. With the help of artifact composer FeatureHouse, we could
achieve the aim automated with some configurations.
