{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HostInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HostInstance where

import Network.AWS.EC2.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an instance running on a Dedicated Host.
--
--
--
-- /See:/ 'hostInstance' smart constructor.
data HostInstance = HostInstance'
  { _hiOwnerId ::
      !(Maybe Text),
    _hiInstanceId :: !(Maybe Text),
    _hiInstanceType :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'HostInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hiOwnerId' - The ID of the AWS account that owns the instance.
--
-- * 'hiInstanceId' - The ID of instance that is running on the Dedicated Host.
--
-- * 'hiInstanceType' - The instance type (for example, @m3.medium@ ) of the running instance.
hostInstance ::
  HostInstance
hostInstance =
  HostInstance'
    { _hiOwnerId = Nothing,
      _hiInstanceId = Nothing,
      _hiInstanceType = Nothing
    }

-- | The ID of the AWS account that owns the instance.
hiOwnerId :: Lens' HostInstance (Maybe Text)
hiOwnerId = lens _hiOwnerId (\s a -> s {_hiOwnerId = a})

-- | The ID of instance that is running on the Dedicated Host.
hiInstanceId :: Lens' HostInstance (Maybe Text)
hiInstanceId = lens _hiInstanceId (\s a -> s {_hiInstanceId = a})

-- | The instance type (for example, @m3.medium@ ) of the running instance.
hiInstanceType :: Lens' HostInstance (Maybe Text)
hiInstanceType = lens _hiInstanceType (\s a -> s {_hiInstanceType = a})

instance FromXML HostInstance where
  parseXML x =
    HostInstance'
      <$> (x .@? "ownerId")
      <*> (x .@? "instanceId")
      <*> (x .@? "instanceType")

instance Hashable HostInstance

instance NFData HostInstance
