{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.BackendServerDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.BackendServerDescription where

import Network.AWS.ELB.Internal
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the configuration of an EC2 instance.
--
--
--
-- /See:/ 'backendServerDescription' smart constructor.
data BackendServerDescription = BackendServerDescription'
  { _bsdInstancePort ::
      !(Maybe Nat),
    _bsdPolicyNames ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BackendServerDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsdInstancePort' - The port on which the EC2 instance is listening.
--
-- * 'bsdPolicyNames' - The names of the policies enabled for the EC2 instance.
backendServerDescription ::
  BackendServerDescription
backendServerDescription =
  BackendServerDescription'
    { _bsdInstancePort =
        Nothing,
      _bsdPolicyNames = Nothing
    }

-- | The port on which the EC2 instance is listening.
bsdInstancePort :: Lens' BackendServerDescription (Maybe Natural)
bsdInstancePort = lens _bsdInstancePort (\s a -> s {_bsdInstancePort = a}) . mapping _Nat

-- | The names of the policies enabled for the EC2 instance.
bsdPolicyNames :: Lens' BackendServerDescription [Text]
bsdPolicyNames = lens _bsdPolicyNames (\s a -> s {_bsdPolicyNames = a}) . _Default . _Coerce

instance FromXML BackendServerDescription where
  parseXML x =
    BackendServerDescription'
      <$> (x .@? "InstancePort")
      <*> ( x .@? "PolicyNames" .!@ mempty
              >>= may (parseXMLList "member")
          )

instance Hashable BackendServerDescription

instance NFData BackendServerDescription
