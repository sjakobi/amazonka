{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceMetadataOptionsResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceMetadataOptionsResponse where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.HTTPTokensState
import Network.AWS.EC2.Types.InstanceMetadataEndpointState
import Network.AWS.EC2.Types.InstanceMetadataOptionsState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The metadata options for the instance.
--
--
--
-- /See:/ 'instanceMetadataOptionsResponse' smart constructor.
data InstanceMetadataOptionsResponse = InstanceMetadataOptionsResponse'
  { _imorHTTPEndpoint ::
      !( Maybe
           InstanceMetadataEndpointState
       ),
    _imorHTTPPutResponseHopLimit ::
      !( Maybe
           Int
       ),
    _imorState ::
      !( Maybe
           InstanceMetadataOptionsState
       ),
    _imorHTTPTokens ::
      !( Maybe
           HTTPTokensState
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InstanceMetadataOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imorHTTPEndpoint' - This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the default state is @enabled@ .
--
-- * 'imorHTTPPutResponseHopLimit' - The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Default: 1 Possible values: Integers from 1 to 64
--
-- * 'imorState' - The state of the metadata option changes. @pending@ - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection. @applied@ - The metadata options have been successfully applied on the instance.
--
-- * 'imorHTTPTokens' - The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ . If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned. If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
instanceMetadataOptionsResponse ::
  InstanceMetadataOptionsResponse
instanceMetadataOptionsResponse =
  InstanceMetadataOptionsResponse'
    { _imorHTTPEndpoint =
        Nothing,
      _imorHTTPPutResponseHopLimit = Nothing,
      _imorState = Nothing,
      _imorHTTPTokens = Nothing
    }

-- | This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the default state is @enabled@ .
imorHTTPEndpoint :: Lens' InstanceMetadataOptionsResponse (Maybe InstanceMetadataEndpointState)
imorHTTPEndpoint = lens _imorHTTPEndpoint (\s a -> s {_imorHTTPEndpoint = a})

-- | The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Default: 1 Possible values: Integers from 1 to 64
imorHTTPPutResponseHopLimit :: Lens' InstanceMetadataOptionsResponse (Maybe Int)
imorHTTPPutResponseHopLimit = lens _imorHTTPPutResponseHopLimit (\s a -> s {_imorHTTPPutResponseHopLimit = a})

-- | The state of the metadata option changes. @pending@ - The metadata options are being updated and the instance is not ready to process metadata traffic with the new selection. @applied@ - The metadata options have been successfully applied on the instance.
imorState :: Lens' InstanceMetadataOptionsResponse (Maybe InstanceMetadataOptionsState)
imorState = lens _imorState (\s a -> s {_imorState = a})

-- | The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ . If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned. If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
imorHTTPTokens :: Lens' InstanceMetadataOptionsResponse (Maybe HTTPTokensState)
imorHTTPTokens = lens _imorHTTPTokens (\s a -> s {_imorHTTPTokens = a})

instance FromXML InstanceMetadataOptionsResponse where
  parseXML x =
    InstanceMetadataOptionsResponse'
      <$> (x .@? "httpEndpoint")
      <*> (x .@? "httpPutResponseHopLimit")
      <*> (x .@? "state")
      <*> (x .@? "httpTokens")

instance Hashable InstanceMetadataOptionsResponse

instance NFData InstanceMetadataOptionsResponse
