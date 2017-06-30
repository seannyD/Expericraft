package mod.mcreator;



public class ClientProxyTestEnvironmentMod extends CommonProxyTestEnvironmentMod {

	@Override
	public void registerRenderers(TestEnvironmentMod ins) {
		ins.mcreator_0.registerRenderers();
		ins.mcreator_1.registerRenderers();
		ins.mcreator_2.registerRenderers();
		ins.mcreator_3.registerRenderers();
		ins.mcreator_4.registerRenderers();

	}
}
