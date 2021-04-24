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
-- Module      : Network.AWS.CognitoIdentityProvider.GetCSVHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the header information for the .csv file to be used as input for the user import job.
module Network.AWS.CognitoIdentityProvider.GetCSVHeader
  ( -- * Creating a Request
    getCSVHeader,
    GetCSVHeader,

    -- * Request Lenses
    gchUserPoolId,

    -- * Destructuring the Response
    getCSVHeaderResponse,
    GetCSVHeaderResponse,

    -- * Response Lenses
    gchrrsUserPoolId,
    gchrrsCSVHeader,
    gchrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to get the header information for the .csv file for the user import job.
--
--
--
-- /See:/ 'getCSVHeader' smart constructor.
newtype GetCSVHeader = GetCSVHeader'
  { _gchUserPoolId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCSVHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchUserPoolId' - The user pool ID for the user pool that the users are to be imported into.
getCSVHeader ::
  -- | 'gchUserPoolId'
  Text ->
  GetCSVHeader
getCSVHeader pUserPoolId_ =
  GetCSVHeader' {_gchUserPoolId = pUserPoolId_}

-- | The user pool ID for the user pool that the users are to be imported into.
gchUserPoolId :: Lens' GetCSVHeader Text
gchUserPoolId = lens _gchUserPoolId (\s a -> s {_gchUserPoolId = a})

instance AWSRequest GetCSVHeader where
  type Rs GetCSVHeader = GetCSVHeaderResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          GetCSVHeaderResponse'
            <$> (x .?> "UserPoolId")
            <*> (x .?> "CSVHeader" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetCSVHeader

instance NFData GetCSVHeader

instance ToHeaders GetCSVHeader where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.GetCSVHeader" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetCSVHeader where
  toJSON GetCSVHeader' {..} =
    object
      (catMaybes [Just ("UserPoolId" .= _gchUserPoolId)])

instance ToPath GetCSVHeader where
  toPath = const "/"

instance ToQuery GetCSVHeader where
  toQuery = const mempty

-- | Represents the response from the server to the request to get the header information for the .csv file for the user import job.
--
--
--
-- /See:/ 'getCSVHeaderResponse' smart constructor.
data GetCSVHeaderResponse = GetCSVHeaderResponse'
  { _gchrrsUserPoolId ::
      !(Maybe Text),
    _gchrrsCSVHeader ::
      !(Maybe [Text]),
    _gchrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetCSVHeaderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gchrrsUserPoolId' - The user pool ID for the user pool that the users are to be imported into.
--
-- * 'gchrrsCSVHeader' - The header information for the .csv file for the user import job.
--
-- * 'gchrrsResponseStatus' - -- | The response status code.
getCSVHeaderResponse ::
  -- | 'gchrrsResponseStatus'
  Int ->
  GetCSVHeaderResponse
getCSVHeaderResponse pResponseStatus_ =
  GetCSVHeaderResponse'
    { _gchrrsUserPoolId = Nothing,
      _gchrrsCSVHeader = Nothing,
      _gchrrsResponseStatus = pResponseStatus_
    }

-- | The user pool ID for the user pool that the users are to be imported into.
gchrrsUserPoolId :: Lens' GetCSVHeaderResponse (Maybe Text)
gchrrsUserPoolId = lens _gchrrsUserPoolId (\s a -> s {_gchrrsUserPoolId = a})

-- | The header information for the .csv file for the user import job.
gchrrsCSVHeader :: Lens' GetCSVHeaderResponse [Text]
gchrrsCSVHeader = lens _gchrrsCSVHeader (\s a -> s {_gchrrsCSVHeader = a}) . _Default . _Coerce

-- | -- | The response status code.
gchrrsResponseStatus :: Lens' GetCSVHeaderResponse Int
gchrrsResponseStatus = lens _gchrrsResponseStatus (\s a -> s {_gchrrsResponseStatus = a})

instance NFData GetCSVHeaderResponse
