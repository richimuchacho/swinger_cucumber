# language: es
Característica: Frame locators and events

		@richi
  Escenario: Frame activation
    * the frame "SwingSet" is visible
    * I activate the frame "SwingSet"
    * the frame "SwingSet" should be active

  Esquema del escenario: Internal frame activation
    * the frame "SwingSet" is visible
    * the toolbar button "JInternalFrame demo" is selected
    * I activate the internal frame "<frame>"
    * the internal frame "<frame>" should be active
  Ejemplos:
    | frame |
    | Frame 0 |
    | Frame 1 |
    | Frame 2 |
    | Frame 3 |
    | Frame 4 |
