{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.PutAggregationAuthorization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Authorizes the aggregator account and region to collect data from the source account and region.
module Network.AWS.Config.PutAggregationAuthorization
  ( -- * Creating a Request
    putAggregationAuthorization,
    PutAggregationAuthorization,

    -- * Request Lenses
    paaTags,
    paaAuthorizedAccountId,
    paaAuthorizedAWSRegion,

    -- * Destructuring the Response
    putAggregationAuthorizationResponse,
    PutAggregationAuthorizationResponse,

    -- * Response Lenses
    paarrsAggregationAuthorization,
    paarrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putAggregationAuthorization' smart constructor.
data PutAggregationAuthorization = PutAggregationAuthorization'
  { _paaTags ::
      !(Maybe [Tag]),
    _paaAuthorizedAccountId ::
      !Text,
    _paaAuthorizedAWSRegion ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAggregationAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paaTags' - An array of tag object.
--
-- * 'paaAuthorizedAccountId' - The 12-digit account ID of the account authorized to aggregate data.
--
-- * 'paaAuthorizedAWSRegion' - The region authorized to collect aggregated data.
putAggregationAuthorization ::
  -- | 'paaAuthorizedAccountId'
  Text ->
  -- | 'paaAuthorizedAWSRegion'
  Text ->
  PutAggregationAuthorization
putAggregationAuthorization
  pAuthorizedAccountId_
  pAuthorizedAWSRegion_ =
    PutAggregationAuthorization'
      { _paaTags = Nothing,
        _paaAuthorizedAccountId =
          pAuthorizedAccountId_,
        _paaAuthorizedAWSRegion =
          pAuthorizedAWSRegion_
      }

-- | An array of tag object.
paaTags :: Lens' PutAggregationAuthorization [Tag]
paaTags = lens _paaTags (\s a -> s {_paaTags = a}) . _Default . _Coerce

-- | The 12-digit account ID of the account authorized to aggregate data.
paaAuthorizedAccountId :: Lens' PutAggregationAuthorization Text
paaAuthorizedAccountId = lens _paaAuthorizedAccountId (\s a -> s {_paaAuthorizedAccountId = a})

-- | The region authorized to collect aggregated data.
paaAuthorizedAWSRegion :: Lens' PutAggregationAuthorization Text
paaAuthorizedAWSRegion = lens _paaAuthorizedAWSRegion (\s a -> s {_paaAuthorizedAWSRegion = a})

instance AWSRequest PutAggregationAuthorization where
  type
    Rs PutAggregationAuthorization =
      PutAggregationAuthorizationResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          PutAggregationAuthorizationResponse'
            <$> (x .?> "AggregationAuthorization")
            <*> (pure (fromEnum s))
      )

instance Hashable PutAggregationAuthorization

instance NFData PutAggregationAuthorization

instance ToHeaders PutAggregationAuthorization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.PutAggregationAuthorization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutAggregationAuthorization where
  toJSON PutAggregationAuthorization' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _paaTags,
            Just
              ("AuthorizedAccountId" .= _paaAuthorizedAccountId),
            Just
              ("AuthorizedAwsRegion" .= _paaAuthorizedAWSRegion)
          ]
      )

instance ToPath PutAggregationAuthorization where
  toPath = const "/"

instance ToQuery PutAggregationAuthorization where
  toQuery = const mempty

-- | /See:/ 'putAggregationAuthorizationResponse' smart constructor.
data PutAggregationAuthorizationResponse = PutAggregationAuthorizationResponse'
  { _paarrsAggregationAuthorization ::
      !( Maybe
           AggregationAuthorization
       ),
    _paarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutAggregationAuthorizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paarrsAggregationAuthorization' - Returns an AggregationAuthorization object.
--
-- * 'paarrsResponseStatus' - -- | The response status code.
putAggregationAuthorizationResponse ::
  -- | 'paarrsResponseStatus'
  Int ->
  PutAggregationAuthorizationResponse
putAggregationAuthorizationResponse pResponseStatus_ =
  PutAggregationAuthorizationResponse'
    { _paarrsAggregationAuthorization =
        Nothing,
      _paarrsResponseStatus =
        pResponseStatus_
    }

-- | Returns an AggregationAuthorization object.
paarrsAggregationAuthorization :: Lens' PutAggregationAuthorizationResponse (Maybe AggregationAuthorization)
paarrsAggregationAuthorization = lens _paarrsAggregationAuthorization (\s a -> s {_paarrsAggregationAuthorization = a})

-- | -- | The response status code.
paarrsResponseStatus :: Lens' PutAggregationAuthorizationResponse Int
paarrsResponseStatus = lens _paarrsResponseStatus (\s a -> s {_paarrsResponseStatus = a})

instance NFData PutAggregationAuthorizationResponse
