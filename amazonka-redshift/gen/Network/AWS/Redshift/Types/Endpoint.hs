{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.Endpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.Endpoint where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.VPCEndpoint

-- | Describes a connection endpoint.
--
--
--
-- /See:/ 'endpoint' smart constructor.
data Endpoint = Endpoint'
  { _eAddress :: !(Maybe Text),
    _eVPCEndpoints :: !(Maybe [VPCEndpoint]),
    _ePort :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Endpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eAddress' - The DNS address of the Cluster.
--
-- * 'eVPCEndpoints' - Describes a connection endpoint.
--
-- * 'ePort' - The port that the database engine is listening on.
endpoint ::
  Endpoint
endpoint =
  Endpoint'
    { _eAddress = Nothing,
      _eVPCEndpoints = Nothing,
      _ePort = Nothing
    }

-- | The DNS address of the Cluster.
eAddress :: Lens' Endpoint (Maybe Text)
eAddress = lens _eAddress (\s a -> s {_eAddress = a})

-- | Describes a connection endpoint.
eVPCEndpoints :: Lens' Endpoint [VPCEndpoint]
eVPCEndpoints = lens _eVPCEndpoints (\s a -> s {_eVPCEndpoints = a}) . _Default . _Coerce

-- | The port that the database engine is listening on.
ePort :: Lens' Endpoint (Maybe Int)
ePort = lens _ePort (\s a -> s {_ePort = a})

instance FromXML Endpoint where
  parseXML x =
    Endpoint'
      <$> (x .@? "Address")
      <*> ( x .@? "VpcEndpoints" .!@ mempty
              >>= may (parseXMLList "VpcEndpoint")
          )
      <*> (x .@? "Port")

instance Hashable Endpoint

instance NFData Endpoint
