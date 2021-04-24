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
-- Module      : Network.AWS.Glacier.ListProvisionedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation lists the provisioned capacity units for the specified AWS account.
module Network.AWS.Glacier.ListProvisionedCapacity
  ( -- * Creating a Request
    listProvisionedCapacity,
    ListProvisionedCapacity,

    -- * Request Lenses
    lpcAccountId,

    -- * Destructuring the Response
    listProvisionedCapacityResponse,
    ListProvisionedCapacityResponse,

    -- * Response Lenses
    lpcrrsProvisionedCapacityList,
    lpcrrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listProvisionedCapacity' smart constructor.
newtype ListProvisionedCapacity = ListProvisionedCapacity'
  { _lpcAccountId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListProvisionedCapacity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpcAccountId' - The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID.
listProvisionedCapacity ::
  -- | 'lpcAccountId'
  Text ->
  ListProvisionedCapacity
listProvisionedCapacity pAccountId_ =
  ListProvisionedCapacity'
    { _lpcAccountId =
        pAccountId_
    }

-- | The AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, don't include any hyphens ('-') in the ID.
lpcAccountId :: Lens' ListProvisionedCapacity Text
lpcAccountId = lens _lpcAccountId (\s a -> s {_lpcAccountId = a})

instance AWSRequest ListProvisionedCapacity where
  type
    Rs ListProvisionedCapacity =
      ListProvisionedCapacityResponse
  request = get glacier
  response =
    receiveJSON
      ( \s h x ->
          ListProvisionedCapacityResponse'
            <$> (x .?> "ProvisionedCapacityList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListProvisionedCapacity

instance NFData ListProvisionedCapacity

instance ToHeaders ListProvisionedCapacity where
  toHeaders = const mempty

instance ToPath ListProvisionedCapacity where
  toPath ListProvisionedCapacity' {..} =
    mconcat
      ["/", toBS _lpcAccountId, "/provisioned-capacity"]

instance ToQuery ListProvisionedCapacity where
  toQuery = const mempty

-- | /See:/ 'listProvisionedCapacityResponse' smart constructor.
data ListProvisionedCapacityResponse = ListProvisionedCapacityResponse'
  { _lpcrrsProvisionedCapacityList ::
      !( Maybe
           [ProvisionedCapacityDescription]
       ),
    _lpcrrsResponseStatus ::
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

-- | Creates a value of 'ListProvisionedCapacityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpcrrsProvisionedCapacityList' - The response body contains the following JSON fields.
--
-- * 'lpcrrsResponseStatus' - -- | The response status code.
listProvisionedCapacityResponse ::
  -- | 'lpcrrsResponseStatus'
  Int ->
  ListProvisionedCapacityResponse
listProvisionedCapacityResponse pResponseStatus_ =
  ListProvisionedCapacityResponse'
    { _lpcrrsProvisionedCapacityList =
        Nothing,
      _lpcrrsResponseStatus = pResponseStatus_
    }

-- | The response body contains the following JSON fields.
lpcrrsProvisionedCapacityList :: Lens' ListProvisionedCapacityResponse [ProvisionedCapacityDescription]
lpcrrsProvisionedCapacityList = lens _lpcrrsProvisionedCapacityList (\s a -> s {_lpcrrsProvisionedCapacityList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpcrrsResponseStatus :: Lens' ListProvisionedCapacityResponse Int
lpcrrsResponseStatus = lens _lpcrrsResponseStatus (\s a -> s {_lpcrrsResponseStatus = a})

instance NFData ListProvisionedCapacityResponse
