{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceTypeOffering
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceTypeOffering where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceType
import Network.AWS.EC2.Types.LocationType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The instance types offered.
--
--
--
-- /See:/ 'instanceTypeOffering' smart constructor.
data InstanceTypeOffering = InstanceTypeOffering'
  { _itoInstanceType ::
      !(Maybe InstanceType),
    _itoLocationType ::
      !(Maybe LocationType),
    _itoLocation :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'InstanceTypeOffering' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itoInstanceType' - The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
--
-- * 'itoLocationType' - The location type.
--
-- * 'itoLocation' - The identifier for the location. This depends on the location type. For example, if the location type is @region@ , the location is the Region code (for example, @us-east-2@ .)
instanceTypeOffering ::
  InstanceTypeOffering
instanceTypeOffering =
  InstanceTypeOffering'
    { _itoInstanceType = Nothing,
      _itoLocationType = Nothing,
      _itoLocation = Nothing
    }

-- | The instance type. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance types> in the /Amazon EC2 User Guide/ .
itoInstanceType :: Lens' InstanceTypeOffering (Maybe InstanceType)
itoInstanceType = lens _itoInstanceType (\s a -> s {_itoInstanceType = a})

-- | The location type.
itoLocationType :: Lens' InstanceTypeOffering (Maybe LocationType)
itoLocationType = lens _itoLocationType (\s a -> s {_itoLocationType = a})

-- | The identifier for the location. This depends on the location type. For example, if the location type is @region@ , the location is the Region code (for example, @us-east-2@ .)
itoLocation :: Lens' InstanceTypeOffering (Maybe Text)
itoLocation = lens _itoLocation (\s a -> s {_itoLocation = a})

instance FromXML InstanceTypeOffering where
  parseXML x =
    InstanceTypeOffering'
      <$> (x .@? "instanceType")
      <*> (x .@? "locationType")
      <*> (x .@? "location")

instance Hashable InstanceTypeOffering

instance NFData InstanceTypeOffering
