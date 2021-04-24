{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.Option
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.Option where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types.DBSecurityGroupMembership
import Network.AWS.RDS.Types.OptionSetting
import Network.AWS.RDS.Types.VPCSecurityGroupMembership

-- | Option details.
--
--
--
-- /See:/ 'option' smart constructor.
data Option = Option'
  { _oOptionName :: !(Maybe Text),
    _oOptionVersion :: !(Maybe Text),
    _oDBSecurityGroupMemberships ::
      !(Maybe [DBSecurityGroupMembership]),
    _oOptionDescription :: !(Maybe Text),
    _oPort :: !(Maybe Int),
    _oOptionSettings :: !(Maybe [OptionSetting]),
    _oPersistent :: !(Maybe Bool),
    _oVPCSecurityGroupMemberships ::
      !(Maybe [VPCSecurityGroupMembership]),
    _oPermanent :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Option' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oOptionName' - The name of the option.
--
-- * 'oOptionVersion' - The version of the option.
--
-- * 'oDBSecurityGroupMemberships' - If the option requires access to a port, then this DB security group allows access to the port.
--
-- * 'oOptionDescription' - The description of the option.
--
-- * 'oPort' - If required, the port configured for this option to use.
--
-- * 'oOptionSettings' - The option settings for this option.
--
-- * 'oPersistent' - Indicate if this option is persistent.
--
-- * 'oVPCSecurityGroupMemberships' - If the option requires access to a port, then this VPC security group allows access to the port.
--
-- * 'oPermanent' - Indicate if this option is permanent.
option ::
  Option
option =
  Option'
    { _oOptionName = Nothing,
      _oOptionVersion = Nothing,
      _oDBSecurityGroupMemberships = Nothing,
      _oOptionDescription = Nothing,
      _oPort = Nothing,
      _oOptionSettings = Nothing,
      _oPersistent = Nothing,
      _oVPCSecurityGroupMemberships = Nothing,
      _oPermanent = Nothing
    }

-- | The name of the option.
oOptionName :: Lens' Option (Maybe Text)
oOptionName = lens _oOptionName (\s a -> s {_oOptionName = a})

-- | The version of the option.
oOptionVersion :: Lens' Option (Maybe Text)
oOptionVersion = lens _oOptionVersion (\s a -> s {_oOptionVersion = a})

-- | If the option requires access to a port, then this DB security group allows access to the port.
oDBSecurityGroupMemberships :: Lens' Option [DBSecurityGroupMembership]
oDBSecurityGroupMemberships = lens _oDBSecurityGroupMemberships (\s a -> s {_oDBSecurityGroupMemberships = a}) . _Default . _Coerce

-- | The description of the option.
oOptionDescription :: Lens' Option (Maybe Text)
oOptionDescription = lens _oOptionDescription (\s a -> s {_oOptionDescription = a})

-- | If required, the port configured for this option to use.
oPort :: Lens' Option (Maybe Int)
oPort = lens _oPort (\s a -> s {_oPort = a})

-- | The option settings for this option.
oOptionSettings :: Lens' Option [OptionSetting]
oOptionSettings = lens _oOptionSettings (\s a -> s {_oOptionSettings = a}) . _Default . _Coerce

-- | Indicate if this option is persistent.
oPersistent :: Lens' Option (Maybe Bool)
oPersistent = lens _oPersistent (\s a -> s {_oPersistent = a})

-- | If the option requires access to a port, then this VPC security group allows access to the port.
oVPCSecurityGroupMemberships :: Lens' Option [VPCSecurityGroupMembership]
oVPCSecurityGroupMemberships = lens _oVPCSecurityGroupMemberships (\s a -> s {_oVPCSecurityGroupMemberships = a}) . _Default . _Coerce

-- | Indicate if this option is permanent.
oPermanent :: Lens' Option (Maybe Bool)
oPermanent = lens _oPermanent (\s a -> s {_oPermanent = a})

instance FromXML Option where
  parseXML x =
    Option'
      <$> (x .@? "OptionName")
      <*> (x .@? "OptionVersion")
      <*> ( x .@? "DBSecurityGroupMemberships" .!@ mempty
              >>= may (parseXMLList "DBSecurityGroup")
          )
      <*> (x .@? "OptionDescription")
      <*> (x .@? "Port")
      <*> ( x .@? "OptionSettings" .!@ mempty
              >>= may (parseXMLList "OptionSetting")
          )
      <*> (x .@? "Persistent")
      <*> ( x .@? "VpcSecurityGroupMemberships" .!@ mempty
              >>= may (parseXMLList "VpcSecurityGroupMembership")
          )
      <*> (x .@? "Permanent")

instance Hashable Option

instance NFData Option
