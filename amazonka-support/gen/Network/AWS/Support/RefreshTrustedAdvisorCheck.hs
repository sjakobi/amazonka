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
-- Module      : Network.AWS.Support.RefreshTrustedAdvisorCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refreshes the AWS Trusted Advisor check that you specify using the check ID. You can get the check IDs by calling the 'DescribeTrustedAdvisorChecks' operation.
--
--
-- The response contains a 'TrustedAdvisorCheckRefreshStatus' object.
module Network.AWS.Support.RefreshTrustedAdvisorCheck
  ( -- * Creating a Request
    refreshTrustedAdvisorCheck,
    RefreshTrustedAdvisorCheck,

    -- * Request Lenses
    rtacCheckId,

    -- * Destructuring the Response
    refreshTrustedAdvisorCheckResponse,
    RefreshTrustedAdvisorCheckResponse,

    -- * Response Lenses
    rtacrrsResponseStatus,
    rtacrrsStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Support.Types

-- |
--
--
--
-- /See:/ 'refreshTrustedAdvisorCheck' smart constructor.
newtype RefreshTrustedAdvisorCheck = RefreshTrustedAdvisorCheck'
  { _rtacCheckId ::
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

-- | Creates a value of 'RefreshTrustedAdvisorCheck' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacCheckId' - The unique identifier for the Trusted Advisor check to refresh. __Note:__ Specifying the check ID of a check that is automatically refreshed causes an @InvalidParameterValue@ error.
refreshTrustedAdvisorCheck ::
  -- | 'rtacCheckId'
  Text ->
  RefreshTrustedAdvisorCheck
refreshTrustedAdvisorCheck pCheckId_ =
  RefreshTrustedAdvisorCheck'
    { _rtacCheckId =
        pCheckId_
    }

-- | The unique identifier for the Trusted Advisor check to refresh. __Note:__ Specifying the check ID of a check that is automatically refreshed causes an @InvalidParameterValue@ error.
rtacCheckId :: Lens' RefreshTrustedAdvisorCheck Text
rtacCheckId = lens _rtacCheckId (\s a -> s {_rtacCheckId = a})

instance AWSRequest RefreshTrustedAdvisorCheck where
  type
    Rs RefreshTrustedAdvisorCheck =
      RefreshTrustedAdvisorCheckResponse
  request = postJSON support
  response =
    receiveJSON
      ( \s h x ->
          RefreshTrustedAdvisorCheckResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "status")
      )

instance Hashable RefreshTrustedAdvisorCheck

instance NFData RefreshTrustedAdvisorCheck

instance ToHeaders RefreshTrustedAdvisorCheck where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSSupport_20130415.RefreshTrustedAdvisorCheck" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RefreshTrustedAdvisorCheck where
  toJSON RefreshTrustedAdvisorCheck' {..} =
    object
      (catMaybes [Just ("checkId" .= _rtacCheckId)])

instance ToPath RefreshTrustedAdvisorCheck where
  toPath = const "/"

instance ToQuery RefreshTrustedAdvisorCheck where
  toQuery = const mempty

-- | The current refresh status of a Trusted Advisor check.
--
--
--
-- /See:/ 'refreshTrustedAdvisorCheckResponse' smart constructor.
data RefreshTrustedAdvisorCheckResponse = RefreshTrustedAdvisorCheckResponse'
  { _rtacrrsResponseStatus ::
      !Int,
    _rtacrrsStatus ::
      !TrustedAdvisorCheckRefreshStatus
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RefreshTrustedAdvisorCheckResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacrrsResponseStatus' - -- | The response status code.
--
-- * 'rtacrrsStatus' - The current refresh status for a check, including the amount of time until the check is eligible for refresh.
refreshTrustedAdvisorCheckResponse ::
  -- | 'rtacrrsResponseStatus'
  Int ->
  -- | 'rtacrrsStatus'
  TrustedAdvisorCheckRefreshStatus ->
  RefreshTrustedAdvisorCheckResponse
refreshTrustedAdvisorCheckResponse
  pResponseStatus_
  pStatus_ =
    RefreshTrustedAdvisorCheckResponse'
      { _rtacrrsResponseStatus =
          pResponseStatus_,
        _rtacrrsStatus = pStatus_
      }

-- | -- | The response status code.
rtacrrsResponseStatus :: Lens' RefreshTrustedAdvisorCheckResponse Int
rtacrrsResponseStatus = lens _rtacrrsResponseStatus (\s a -> s {_rtacrrsResponseStatus = a})

-- | The current refresh status for a check, including the amount of time until the check is eligible for refresh.
rtacrrsStatus :: Lens' RefreshTrustedAdvisorCheckResponse TrustedAdvisorCheckRefreshStatus
rtacrrsStatus = lens _rtacrrsStatus (\s a -> s {_rtacrrsStatus = a})

instance NFData RefreshTrustedAdvisorCheckResponse
