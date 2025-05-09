<?php
namespace Convenient\Hello\Test\Integration;

use Magento\TestFramework\Helper\Bootstrap;
use PHPUnit\Framework\TestCase;
use Magento\Framework\App\Config\ScopeConfigInterface;

class TestConfigFixtureTest extends TestCase
{
    public function testConfigFixtureNotSet()
    {
        $this->assertFalse(
            Bootstrap::getObjectManager()->get(ScopeConfigInterface::class)->isSetFlag('some/config/value'),
            'some/config/value should not be present by default'
        );
    }

    /**
     * @magentoAdminConfigFixture some/config/value 1
     */
    public function testConfigFixtureSet()
    {
        $this->assertTrue(
            Bootstrap::getObjectManager()->get(ScopeConfigInterface::class)->isSetFlag('some/config/value'),
            'some/config/value should be set by the fixture'
        );
    }
}
