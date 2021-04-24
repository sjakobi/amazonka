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
-- Module      : Network.AWS.Route53.GetChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current status of a change batch request. The status is one of the following values:
--
--
--     * @PENDING@ indicates that the changes in this request have not propagated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.
--
--     * @INSYNC@ indicates that the changes have propagated to all Route 53 DNS servers.
module Network.AWS.Route53.GetChange
  ( -- * Creating a Request
    getChange,
    GetChange,

    -- * Request Lenses
    gcId,

    -- * Destructuring the Response
    getChangeResponse,
    GetChangeResponse,

    -- * Response Lenses
    gcrrsResponseStatus,
    gcrrsChangeInfo,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53.Types

-- | The input for a GetChange request.
--
--
--
-- /See:/ 'getChange' smart constructor.
newtype GetChange = GetChange' {_gcId :: ResourceId}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetChange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcId' - The ID of the change batch request. The value that you specify here is the value that @ChangeResourceRecordSets@ returned in the @Id@ element when you submitted the request.
getChange ::
  -- | 'gcId'
  ResourceId ->
  GetChange
getChange pId_ = GetChange' {_gcId = pId_}

-- | The ID of the change batch request. The value that you specify here is the value that @ChangeResourceRecordSets@ returned in the @Id@ element when you submitted the request.
gcId :: Lens' GetChange ResourceId
gcId = lens _gcId (\s a -> s {_gcId = a})

instance AWSRequest GetChange where
  type Rs GetChange = GetChangeResponse
  request = get route53
  response =
    receiveXML
      ( \s h x ->
          GetChangeResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "ChangeInfo")
      )

instance Hashable GetChange

instance NFData GetChange

instance ToHeaders GetChange where
  toHeaders = const mempty

instance ToPath GetChange where
  toPath GetChange' {..} =
    mconcat ["/2013-04-01/change/", toBS _gcId]

instance ToQuery GetChange where
  toQuery = const mempty

-- | A complex type that contains the @ChangeInfo@ element.
--
--
--
-- /See:/ 'getChangeResponse' smart constructor.
data GetChangeResponse = GetChangeResponse'
  { _gcrrsResponseStatus ::
      !Int,
    _gcrrsChangeInfo :: !ChangeInfo
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetChangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
--
-- * 'gcrrsChangeInfo' - A complex type that contains information about the specified change batch.
getChangeResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  -- | 'gcrrsChangeInfo'
  ChangeInfo ->
  GetChangeResponse
getChangeResponse pResponseStatus_ pChangeInfo_ =
  GetChangeResponse'
    { _gcrrsResponseStatus =
        pResponseStatus_,
      _gcrrsChangeInfo = pChangeInfo_
    }

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetChangeResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

-- | A complex type that contains information about the specified change batch.
gcrrsChangeInfo :: Lens' GetChangeResponse ChangeInfo
gcrrsChangeInfo = lens _gcrrsChangeInfo (\s a -> s {_gcrrsChangeInfo = a})

instance NFData GetChangeResponse
