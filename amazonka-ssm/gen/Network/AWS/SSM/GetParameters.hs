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
-- Module      : Network.AWS.SSM.GetParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get details of a parameter. Don't confuse this API action with the 'GetParameter' API action.
module Network.AWS.SSM.GetParameters
  ( -- * Creating a Request
    getParameters,
    GetParameters,

    -- * Request Lenses
    gWithDecryption,
    gNames,

    -- * Destructuring the Response
    getParametersResponse,
    GetParametersResponse,

    -- * Response Lenses
    grsInvalidParameters,
    grsParameters,
    grsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'getParameters' smart constructor.
data GetParameters = GetParameters'
  { _gWithDecryption ::
      !(Maybe Bool),
    _gNames :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gWithDecryption' - Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
--
-- * 'gNames' - Names of the parameters for which you want to query information.
getParameters ::
  -- | 'gNames'
  NonEmpty Text ->
  GetParameters
getParameters pNames_ =
  GetParameters'
    { _gWithDecryption = Nothing,
      _gNames = _List1 # pNames_
    }

-- | Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.
gWithDecryption :: Lens' GetParameters (Maybe Bool)
gWithDecryption = lens _gWithDecryption (\s a -> s {_gWithDecryption = a})

-- | Names of the parameters for which you want to query information.
gNames :: Lens' GetParameters (NonEmpty Text)
gNames = lens _gNames (\s a -> s {_gNames = a}) . _List1

instance AWSRequest GetParameters where
  type Rs GetParameters = GetParametersResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          GetParametersResponse'
            <$> (x .?> "InvalidParameters" .!@ mempty)
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetParameters

instance NFData GetParameters

instance ToHeaders GetParameters where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.GetParameters" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetParameters where
  toJSON GetParameters' {..} =
    object
      ( catMaybes
          [ ("WithDecryption" .=) <$> _gWithDecryption,
            Just ("Names" .= _gNames)
          ]
      )

instance ToPath GetParameters where
  toPath = const "/"

instance ToQuery GetParameters where
  toQuery = const mempty

-- | /See:/ 'getParametersResponse' smart constructor.
data GetParametersResponse = GetParametersResponse'
  { _grsInvalidParameters ::
      !(Maybe [Text]),
    _grsParameters ::
      !(Maybe [Parameter]),
    _grsResponseStatus :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grsInvalidParameters' - A list of parameters that are not formatted correctly or do not run during an execution.
--
-- * 'grsParameters' - A list of details for a parameter.
--
-- * 'grsResponseStatus' - -- | The response status code.
getParametersResponse ::
  -- | 'grsResponseStatus'
  Int ->
  GetParametersResponse
getParametersResponse pResponseStatus_ =
  GetParametersResponse'
    { _grsInvalidParameters =
        Nothing,
      _grsParameters = Nothing,
      _grsResponseStatus = pResponseStatus_
    }

-- | A list of parameters that are not formatted correctly or do not run during an execution.
grsInvalidParameters :: Lens' GetParametersResponse [Text]
grsInvalidParameters = lens _grsInvalidParameters (\s a -> s {_grsInvalidParameters = a}) . _Default . _Coerce

-- | A list of details for a parameter.
grsParameters :: Lens' GetParametersResponse [Parameter]
grsParameters = lens _grsParameters (\s a -> s {_grsParameters = a}) . _Default . _Coerce

-- | -- | The response status code.
grsResponseStatus :: Lens' GetParametersResponse Int
grsResponseStatus = lens _grsResponseStatus (\s a -> s {_grsResponseStatus = a})

instance NFData GetParametersResponse
