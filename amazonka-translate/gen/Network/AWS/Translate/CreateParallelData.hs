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
-- Module      : Network.AWS.Translate.CreateParallelData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a parallel data resource in Amazon Translate by importing an input file from Amazon S3. Parallel data files contain examples of source phrases and their translations from your translation memory. By adding parallel data, you can influence the style, tone, and word choice in your translation output.
module Network.AWS.Translate.CreateParallelData
  ( -- * Creating a Request
    createParallelData,
    CreateParallelData,

    -- * Request Lenses
    cpdEncryptionKey,
    cpdDescription,
    cpdName,
    cpdParallelDataConfig,
    cpdClientToken,

    -- * Destructuring the Response
    createParallelDataResponse,
    CreateParallelDataResponse,

    -- * Response Lenses
    cpdrrsStatus,
    cpdrrsName,
    cpdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Translate.Types

-- | /See:/ 'createParallelData' smart constructor.
data CreateParallelData = CreateParallelData'
  { _cpdEncryptionKey ::
      !(Maybe EncryptionKey),
    _cpdDescription :: !(Maybe Text),
    _cpdName :: !Text,
    _cpdParallelDataConfig ::
      !ParallelDataConfig,
    _cpdClientToken :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateParallelData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdEncryptionKey' - Undocumented member.
--
-- * 'cpdDescription' - A custom description for the parallel data resource in Amazon Translate.
--
-- * 'cpdName' - A custom name for the parallel data resource in Amazon Translate. You must assign a name that is unique in the account and region.
--
-- * 'cpdParallelDataConfig' - Specifies the format and S3 location of the parallel data input file.
--
-- * 'cpdClientToken' - A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.
createParallelData ::
  -- | 'cpdName'
  Text ->
  -- | 'cpdParallelDataConfig'
  ParallelDataConfig ->
  -- | 'cpdClientToken'
  Text ->
  CreateParallelData
createParallelData
  pName_
  pParallelDataConfig_
  pClientToken_ =
    CreateParallelData'
      { _cpdEncryptionKey = Nothing,
        _cpdDescription = Nothing,
        _cpdName = pName_,
        _cpdParallelDataConfig = pParallelDataConfig_,
        _cpdClientToken = pClientToken_
      }

-- | Undocumented member.
cpdEncryptionKey :: Lens' CreateParallelData (Maybe EncryptionKey)
cpdEncryptionKey = lens _cpdEncryptionKey (\s a -> s {_cpdEncryptionKey = a})

-- | A custom description for the parallel data resource in Amazon Translate.
cpdDescription :: Lens' CreateParallelData (Maybe Text)
cpdDescription = lens _cpdDescription (\s a -> s {_cpdDescription = a})

-- | A custom name for the parallel data resource in Amazon Translate. You must assign a name that is unique in the account and region.
cpdName :: Lens' CreateParallelData Text
cpdName = lens _cpdName (\s a -> s {_cpdName = a})

-- | Specifies the format and S3 location of the parallel data input file.
cpdParallelDataConfig :: Lens' CreateParallelData ParallelDataConfig
cpdParallelDataConfig = lens _cpdParallelDataConfig (\s a -> s {_cpdParallelDataConfig = a})

-- | A unique identifier for the request. This token is automatically generated when you use Amazon Translate through an AWS SDK.
cpdClientToken :: Lens' CreateParallelData Text
cpdClientToken = lens _cpdClientToken (\s a -> s {_cpdClientToken = a})

instance AWSRequest CreateParallelData where
  type
    Rs CreateParallelData =
      CreateParallelDataResponse
  request = postJSON translate
  response =
    receiveJSON
      ( \s h x ->
          CreateParallelDataResponse'
            <$> (x .?> "Status")
            <*> (x .?> "Name")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateParallelData

instance NFData CreateParallelData

instance ToHeaders CreateParallelData where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSShineFrontendService_20170701.CreateParallelData" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateParallelData where
  toJSON CreateParallelData' {..} =
    object
      ( catMaybes
          [ ("EncryptionKey" .=) <$> _cpdEncryptionKey,
            ("Description" .=) <$> _cpdDescription,
            Just ("Name" .= _cpdName),
            Just
              ("ParallelDataConfig" .= _cpdParallelDataConfig),
            Just ("ClientToken" .= _cpdClientToken)
          ]
      )

instance ToPath CreateParallelData where
  toPath = const "/"

instance ToQuery CreateParallelData where
  toQuery = const mempty

-- | /See:/ 'createParallelDataResponse' smart constructor.
data CreateParallelDataResponse = CreateParallelDataResponse'
  { _cpdrrsStatus ::
      !( Maybe
           ParallelDataStatus
       ),
    _cpdrrsName ::
      !(Maybe Text),
    _cpdrrsResponseStatus ::
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

-- | Creates a value of 'CreateParallelDataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpdrrsStatus' - The status of the parallel data resource. When the resource is ready for you to use, the status is @ACTIVE@ .
--
-- * 'cpdrrsName' - The custom name that you assigned to the parallel data resource.
--
-- * 'cpdrrsResponseStatus' - -- | The response status code.
createParallelDataResponse ::
  -- | 'cpdrrsResponseStatus'
  Int ->
  CreateParallelDataResponse
createParallelDataResponse pResponseStatus_ =
  CreateParallelDataResponse'
    { _cpdrrsStatus =
        Nothing,
      _cpdrrsName = Nothing,
      _cpdrrsResponseStatus = pResponseStatus_
    }

-- | The status of the parallel data resource. When the resource is ready for you to use, the status is @ACTIVE@ .
cpdrrsStatus :: Lens' CreateParallelDataResponse (Maybe ParallelDataStatus)
cpdrrsStatus = lens _cpdrrsStatus (\s a -> s {_cpdrrsStatus = a})

-- | The custom name that you assigned to the parallel data resource.
cpdrrsName :: Lens' CreateParallelDataResponse (Maybe Text)
cpdrrsName = lens _cpdrrsName (\s a -> s {_cpdrrsName = a})

-- | -- | The response status code.
cpdrrsResponseStatus :: Lens' CreateParallelDataResponse Int
cpdrrsResponseStatus = lens _cpdrrsResponseStatus (\s a -> s {_cpdrrsResponseStatus = a})

instance NFData CreateParallelDataResponse
