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
-- Module      : Network.AWS.CognitoIdentityProvider.ListUserImportJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user import jobs.
module Network.AWS.CognitoIdentityProvider.ListUserImportJobs
  ( -- * Creating a Request
    listUserImportJobs,
    ListUserImportJobs,

    -- * Request Lenses
    luijPaginationToken,
    luijUserPoolId,
    luijMaxResults,

    -- * Destructuring the Response
    listUserImportJobsResponse,
    ListUserImportJobsResponse,

    -- * Response Lenses
    luijrrsUserImportJobs,
    luijrrsPaginationToken,
    luijrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list the user import jobs.
--
--
--
-- /See:/ 'listUserImportJobs' smart constructor.
data ListUserImportJobs = ListUserImportJobs'
  { _luijPaginationToken ::
      !(Maybe Text),
    _luijUserPoolId :: !Text,
    _luijMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserImportJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luijPaginationToken' - An identifier that was returned from the previous call to @ListUserImportJobs@ , which can be used to return the next set of import jobs in the list.
--
-- * 'luijUserPoolId' - The user pool ID for the user pool that the users are being imported into.
--
-- * 'luijMaxResults' - The maximum number of import jobs you want the request to return.
listUserImportJobs ::
  -- | 'luijUserPoolId'
  Text ->
  -- | 'luijMaxResults'
  Natural ->
  ListUserImportJobs
listUserImportJobs pUserPoolId_ pMaxResults_ =
  ListUserImportJobs'
    { _luijPaginationToken = Nothing,
      _luijUserPoolId = pUserPoolId_,
      _luijMaxResults = _Nat # pMaxResults_
    }

-- | An identifier that was returned from the previous call to @ListUserImportJobs@ , which can be used to return the next set of import jobs in the list.
luijPaginationToken :: Lens' ListUserImportJobs (Maybe Text)
luijPaginationToken = lens _luijPaginationToken (\s a -> s {_luijPaginationToken = a})

-- | The user pool ID for the user pool that the users are being imported into.
luijUserPoolId :: Lens' ListUserImportJobs Text
luijUserPoolId = lens _luijUserPoolId (\s a -> s {_luijUserPoolId = a})

-- | The maximum number of import jobs you want the request to return.
luijMaxResults :: Lens' ListUserImportJobs Natural
luijMaxResults = lens _luijMaxResults (\s a -> s {_luijMaxResults = a}) . _Nat

instance AWSRequest ListUserImportJobs where
  type
    Rs ListUserImportJobs =
      ListUserImportJobsResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListUserImportJobsResponse'
            <$> (x .?> "UserImportJobs")
            <*> (x .?> "PaginationToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListUserImportJobs

instance NFData ListUserImportJobs

instance ToHeaders ListUserImportJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListUserImportJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListUserImportJobs where
  toJSON ListUserImportJobs' {..} =
    object
      ( catMaybes
          [ ("PaginationToken" .=) <$> _luijPaginationToken,
            Just ("UserPoolId" .= _luijUserPoolId),
            Just ("MaxResults" .= _luijMaxResults)
          ]
      )

instance ToPath ListUserImportJobs where
  toPath = const "/"

instance ToQuery ListUserImportJobs where
  toQuery = const mempty

-- | Represents the response from the server to the request to list the user import jobs.
--
--
--
-- /See:/ 'listUserImportJobsResponse' smart constructor.
data ListUserImportJobsResponse = ListUserImportJobsResponse'
  { _luijrrsUserImportJobs ::
      !( Maybe
           ( List1
               UserImportJobType
           )
       ),
    _luijrrsPaginationToken ::
      !(Maybe Text),
    _luijrrsResponseStatus ::
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

-- | Creates a value of 'ListUserImportJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luijrrsUserImportJobs' - The user import jobs.
--
-- * 'luijrrsPaginationToken' - An identifier that can be used to return the next set of user import jobs in the list.
--
-- * 'luijrrsResponseStatus' - -- | The response status code.
listUserImportJobsResponse ::
  -- | 'luijrrsResponseStatus'
  Int ->
  ListUserImportJobsResponse
listUserImportJobsResponse pResponseStatus_ =
  ListUserImportJobsResponse'
    { _luijrrsUserImportJobs =
        Nothing,
      _luijrrsPaginationToken = Nothing,
      _luijrrsResponseStatus = pResponseStatus_
    }

-- | The user import jobs.
luijrrsUserImportJobs :: Lens' ListUserImportJobsResponse (Maybe (NonEmpty UserImportJobType))
luijrrsUserImportJobs = lens _luijrrsUserImportJobs (\s a -> s {_luijrrsUserImportJobs = a}) . mapping _List1

-- | An identifier that can be used to return the next set of user import jobs in the list.
luijrrsPaginationToken :: Lens' ListUserImportJobsResponse (Maybe Text)
luijrrsPaginationToken = lens _luijrrsPaginationToken (\s a -> s {_luijrrsPaginationToken = a})

-- | -- | The response status code.
luijrrsResponseStatus :: Lens' ListUserImportJobsResponse Int
luijrrsResponseStatus = lens _luijrrsResponseStatus (\s a -> s {_luijrrsResponseStatus = a})

instance NFData ListUserImportJobsResponse
