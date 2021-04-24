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
-- Module      : Network.AWS.IAM.GetAccountSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about IAM entity usage and IAM quotas in the AWS account.
--
--
-- For information about IAM quotas, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html IAM and STS quotas> in the /IAM User Guide/ .
module Network.AWS.IAM.GetAccountSummary
  ( -- * Creating a Request
    getAccountSummary,
    GetAccountSummary,

    -- * Destructuring the Response
    getAccountSummaryResponse,
    GetAccountSummaryResponse,

    -- * Response Lenses
    gasrrsSummaryMap,
    gasrrsResponseStatus,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getAccountSummary' smart constructor.
data GetAccountSummary = GetAccountSummary'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAccountSummary' with the minimum fields required to make a request.
getAccountSummary ::
  GetAccountSummary
getAccountSummary = GetAccountSummary'

instance AWSRequest GetAccountSummary where
  type Rs GetAccountSummary = GetAccountSummaryResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetAccountSummaryResult"
      ( \s h x ->
          GetAccountSummaryResponse'
            <$> ( x .@? "SummaryMap" .!@ mempty
                    >>= may (parseXMLMap "entry" "key" "value")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable GetAccountSummary

instance NFData GetAccountSummary

instance ToHeaders GetAccountSummary where
  toHeaders = const mempty

instance ToPath GetAccountSummary where
  toPath = const "/"

instance ToQuery GetAccountSummary where
  toQuery =
    const
      ( mconcat
          [ "Action" =: ("GetAccountSummary" :: ByteString),
            "Version" =: ("2010-05-08" :: ByteString)
          ]
      )

-- | Contains the response to a successful 'GetAccountSummary' request.
--
--
--
-- /See:/ 'getAccountSummaryResponse' smart constructor.
data GetAccountSummaryResponse = GetAccountSummaryResponse'
  { _gasrrsSummaryMap ::
      !( Maybe
           ( Map
               SummaryKeyType
               Int
           )
       ),
    _gasrrsResponseStatus ::
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

-- | Creates a value of 'GetAccountSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gasrrsSummaryMap' - A set of key–value pairs containing information about IAM entity usage and IAM quotas.
--
-- * 'gasrrsResponseStatus' - -- | The response status code.
getAccountSummaryResponse ::
  -- | 'gasrrsResponseStatus'
  Int ->
  GetAccountSummaryResponse
getAccountSummaryResponse pResponseStatus_ =
  GetAccountSummaryResponse'
    { _gasrrsSummaryMap =
        Nothing,
      _gasrrsResponseStatus = pResponseStatus_
    }

-- | A set of key–value pairs containing information about IAM entity usage and IAM quotas.
gasrrsSummaryMap :: Lens' GetAccountSummaryResponse (HashMap SummaryKeyType Int)
gasrrsSummaryMap = lens _gasrrsSummaryMap (\s a -> s {_gasrrsSummaryMap = a}) . _Default . _Map

-- | -- | The response status code.
gasrrsResponseStatus :: Lens' GetAccountSummaryResponse Int
gasrrsResponseStatus = lens _gasrrsResponseStatus (\s a -> s {_gasrrsResponseStatus = a})

instance NFData GetAccountSummaryResponse
