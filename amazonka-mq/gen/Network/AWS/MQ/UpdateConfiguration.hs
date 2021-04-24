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
-- Module      : Network.AWS.MQ.UpdateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified configuration.
module Network.AWS.MQ.UpdateConfiguration
  ( -- * Creating a Request
    updateConfiguration,
    UpdateConfiguration,

    -- * Request Lenses
    ucData,
    ucDescription,
    ucConfigurationId,

    -- * Destructuring the Response
    updateConfigurationResponse,
    UpdateConfigurationResponse,

    -- * Response Lenses
    ucrrsWarnings,
    ucrrsLatestRevision,
    ucrrsARN,
    ucrrsId,
    ucrrsName,
    ucrrsCreated,
    ucrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Updates the specified configuration.
--
-- /See:/ 'updateConfiguration' smart constructor.
data UpdateConfiguration = UpdateConfiguration'
  { _ucData ::
      !(Maybe Text),
    _ucDescription :: !(Maybe Text),
    _ucConfigurationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucData' - Required. The base64-encoded XML configuration.
--
-- * 'ucDescription' - The description of the configuration.
--
-- * 'ucConfigurationId' - The unique ID that Amazon MQ generates for the configuration.
updateConfiguration ::
  -- | 'ucConfigurationId'
  Text ->
  UpdateConfiguration
updateConfiguration pConfigurationId_ =
  UpdateConfiguration'
    { _ucData = Nothing,
      _ucDescription = Nothing,
      _ucConfigurationId = pConfigurationId_
    }

-- | Required. The base64-encoded XML configuration.
ucData :: Lens' UpdateConfiguration (Maybe Text)
ucData = lens _ucData (\s a -> s {_ucData = a})

-- | The description of the configuration.
ucDescription :: Lens' UpdateConfiguration (Maybe Text)
ucDescription = lens _ucDescription (\s a -> s {_ucDescription = a})

-- | The unique ID that Amazon MQ generates for the configuration.
ucConfigurationId :: Lens' UpdateConfiguration Text
ucConfigurationId = lens _ucConfigurationId (\s a -> s {_ucConfigurationId = a})

instance AWSRequest UpdateConfiguration where
  type
    Rs UpdateConfiguration =
      UpdateConfigurationResponse
  request = putJSON mq
  response =
    receiveJSON
      ( \s h x ->
          UpdateConfigurationResponse'
            <$> (x .?> "warnings" .!@ mempty)
            <*> (x .?> "latestRevision")
            <*> (x .?> "arn")
            <*> (x .?> "id")
            <*> (x .?> "name")
            <*> (x .?> "created")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateConfiguration

instance NFData UpdateConfiguration

instance ToHeaders UpdateConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateConfiguration where
  toJSON UpdateConfiguration' {..} =
    object
      ( catMaybes
          [ ("data" .=) <$> _ucData,
            ("description" .=) <$> _ucDescription
          ]
      )

instance ToPath UpdateConfiguration where
  toPath UpdateConfiguration' {..} =
    mconcat
      ["/v1/configurations/", toBS _ucConfigurationId]

instance ToQuery UpdateConfiguration where
  toQuery = const mempty

-- | /See:/ 'updateConfigurationResponse' smart constructor.
data UpdateConfigurationResponse = UpdateConfigurationResponse'
  { _ucrrsWarnings ::
      !( Maybe
           [SanitizationWarning]
       ),
    _ucrrsLatestRevision ::
      !( Maybe
           ConfigurationRevision
       ),
    _ucrrsARN ::
      !(Maybe Text),
    _ucrrsId ::
      !(Maybe Text),
    _ucrrsName ::
      !(Maybe Text),
    _ucrrsCreated ::
      !(Maybe POSIX),
    _ucrrsResponseStatus ::
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

-- | Creates a value of 'UpdateConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrrsWarnings' - The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized.
--
-- * 'ucrrsLatestRevision' - The latest revision of the configuration.
--
-- * 'ucrrsARN' - Required. The Amazon Resource Name (ARN) of the configuration.
--
-- * 'ucrrsId' - Required. The unique ID that Amazon MQ generates for the configuration.
--
-- * 'ucrrsName' - Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
--
-- * 'ucrrsCreated' - Required. The date and time of the configuration.
--
-- * 'ucrrsResponseStatus' - -- | The response status code.
updateConfigurationResponse ::
  -- | 'ucrrsResponseStatus'
  Int ->
  UpdateConfigurationResponse
updateConfigurationResponse pResponseStatus_ =
  UpdateConfigurationResponse'
    { _ucrrsWarnings =
        Nothing,
      _ucrrsLatestRevision = Nothing,
      _ucrrsARN = Nothing,
      _ucrrsId = Nothing,
      _ucrrsName = Nothing,
      _ucrrsCreated = Nothing,
      _ucrrsResponseStatus = pResponseStatus_
    }

-- | The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized.
ucrrsWarnings :: Lens' UpdateConfigurationResponse [SanitizationWarning]
ucrrsWarnings = lens _ucrrsWarnings (\s a -> s {_ucrrsWarnings = a}) . _Default . _Coerce

-- | The latest revision of the configuration.
ucrrsLatestRevision :: Lens' UpdateConfigurationResponse (Maybe ConfigurationRevision)
ucrrsLatestRevision = lens _ucrrsLatestRevision (\s a -> s {_ucrrsLatestRevision = a})

-- | Required. The Amazon Resource Name (ARN) of the configuration.
ucrrsARN :: Lens' UpdateConfigurationResponse (Maybe Text)
ucrrsARN = lens _ucrrsARN (\s a -> s {_ucrrsARN = a})

-- | Required. The unique ID that Amazon MQ generates for the configuration.
ucrrsId :: Lens' UpdateConfigurationResponse (Maybe Text)
ucrrsId = lens _ucrrsId (\s a -> s {_ucrrsId = a})

-- | Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.
ucrrsName :: Lens' UpdateConfigurationResponse (Maybe Text)
ucrrsName = lens _ucrrsName (\s a -> s {_ucrrsName = a})

-- | Required. The date and time of the configuration.
ucrrsCreated :: Lens' UpdateConfigurationResponse (Maybe UTCTime)
ucrrsCreated = lens _ucrrsCreated (\s a -> s {_ucrrsCreated = a}) . mapping _Time

-- | -- | The response status code.
ucrrsResponseStatus :: Lens' UpdateConfigurationResponse Int
ucrrsResponseStatus = lens _ucrrsResponseStatus (\s a -> s {_ucrrsResponseStatus = a})

instance NFData UpdateConfigurationResponse
