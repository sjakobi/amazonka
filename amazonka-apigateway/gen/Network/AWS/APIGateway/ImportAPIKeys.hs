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
-- Module      : Network.AWS.APIGateway.ImportAPIKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import API keys from an external source, such as a CSV-formatted file.
module Network.AWS.APIGateway.ImportAPIKeys
  ( -- * Creating a Request
    importAPIKeys,
    ImportAPIKeys,

    -- * Request Lenses
    iakFailOnWarnings,
    iakBody,
    iakFormat,

    -- * Destructuring the Response
    importAPIKeysResponse,
    ImportAPIKeysResponse,

    -- * Response Lenses
    iakrrsWarnings,
    iakrrsIds,
    iakrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The POST request to import API keys from an external source, such as a CSV-formatted file.
--
--
--
-- /See:/ 'importAPIKeys' smart constructor.
data ImportAPIKeys = ImportAPIKeys'
  { _iakFailOnWarnings ::
      !(Maybe Bool),
    _iakBody :: !ByteString,
    _iakFormat :: !APIKeysFormat
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImportAPIKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iakFailOnWarnings' - A query parameter to indicate whether to rollback 'ApiKey' importation (@true@ ) or not (@false@ ) when error is encountered.
--
-- * 'iakBody' - The payload of the POST request to import API keys. For the payload format, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html API Key File Format> .
--
-- * 'iakFormat' - A query parameter to specify the input format to imported API keys. Currently, only the @csv@ format is supported.
importAPIKeys ::
  -- | 'iakBody'
  ByteString ->
  -- | 'iakFormat'
  APIKeysFormat ->
  ImportAPIKeys
importAPIKeys pBody_ pFormat_ =
  ImportAPIKeys'
    { _iakFailOnWarnings = Nothing,
      _iakBody = pBody_,
      _iakFormat = pFormat_
    }

-- | A query parameter to indicate whether to rollback 'ApiKey' importation (@true@ ) or not (@false@ ) when error is encountered.
iakFailOnWarnings :: Lens' ImportAPIKeys (Maybe Bool)
iakFailOnWarnings = lens _iakFailOnWarnings (\s a -> s {_iakFailOnWarnings = a})

-- | The payload of the POST request to import API keys. For the payload format, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html API Key File Format> .
iakBody :: Lens' ImportAPIKeys ByteString
iakBody = lens _iakBody (\s a -> s {_iakBody = a})

-- | A query parameter to specify the input format to imported API keys. Currently, only the @csv@ format is supported.
iakFormat :: Lens' ImportAPIKeys APIKeysFormat
iakFormat = lens _iakFormat (\s a -> s {_iakFormat = a})

instance AWSRequest ImportAPIKeys where
  type Rs ImportAPIKeys = ImportAPIKeysResponse
  request = postBody apiGateway
  response =
    receiveJSON
      ( \s h x ->
          ImportAPIKeysResponse'
            <$> (x .?> "warnings" .!@ mempty)
            <*> (x .?> "ids" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ImportAPIKeys

instance NFData ImportAPIKeys

instance ToBody ImportAPIKeys where
  toBody = toBody . _iakBody

instance ToHeaders ImportAPIKeys where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath ImportAPIKeys where
  toPath = const "/apikeys"

instance ToQuery ImportAPIKeys where
  toQuery ImportAPIKeys' {..} =
    mconcat
      [ "failonwarnings" =: _iakFailOnWarnings,
        "format" =: _iakFormat,
        "mode=import"
      ]

-- | The identifier of an 'ApiKey' used in a 'UsagePlan' .
--
--
--
-- /See:/ 'importAPIKeysResponse' smart constructor.
data ImportAPIKeysResponse = ImportAPIKeysResponse'
  { _iakrrsWarnings ::
      !(Maybe [Text]),
    _iakrrsIds ::
      !(Maybe [Text]),
    _iakrrsResponseStatus ::
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

-- | Creates a value of 'ImportAPIKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iakrrsWarnings' - A list of warning messages.
--
-- * 'iakrrsIds' - A list of all the 'ApiKey' identifiers.
--
-- * 'iakrrsResponseStatus' - -- | The response status code.
importAPIKeysResponse ::
  -- | 'iakrrsResponseStatus'
  Int ->
  ImportAPIKeysResponse
importAPIKeysResponse pResponseStatus_ =
  ImportAPIKeysResponse'
    { _iakrrsWarnings = Nothing,
      _iakrrsIds = Nothing,
      _iakrrsResponseStatus = pResponseStatus_
    }

-- | A list of warning messages.
iakrrsWarnings :: Lens' ImportAPIKeysResponse [Text]
iakrrsWarnings = lens _iakrrsWarnings (\s a -> s {_iakrrsWarnings = a}) . _Default . _Coerce

-- | A list of all the 'ApiKey' identifiers.
iakrrsIds :: Lens' ImportAPIKeysResponse [Text]
iakrrsIds = lens _iakrrsIds (\s a -> s {_iakrrsIds = a}) . _Default . _Coerce

-- | -- | The response status code.
iakrrsResponseStatus :: Lens' ImportAPIKeysResponse Int
iakrrsResponseStatus = lens _iakrrsResponseStatus (\s a -> s {_iakrrsResponseStatus = a})

instance NFData ImportAPIKeysResponse
