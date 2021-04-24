{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.FunctionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.FunctionConfiguration where

import Network.AWS.AppSync.Types.SyncConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A function is a reusable entity. Multiple functions can be used to compose the resolver logic.
--
--
--
-- /See:/ 'functionConfiguration' smart constructor.
data FunctionConfiguration = FunctionConfiguration'
  { _fcResponseMappingTemplate ::
      !(Maybe Text),
    _fcFunctionVersion ::
      !(Maybe Text),
    _fcSyncConfig ::
      !(Maybe SyncConfig),
    _fcDataSourceName ::
      !(Maybe Text),
    _fcName :: !(Maybe Text),
    _fcFunctionId ::
      !(Maybe Text),
    _fcFunctionARN ::
      !(Maybe Text),
    _fcDescription ::
      !(Maybe Text),
    _fcRequestMappingTemplate ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'FunctionConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcResponseMappingTemplate' - The @Function@ response mapping template.
--
-- * 'fcFunctionVersion' - The version of the request mapping template. Currently only the 2018-05-29 version of the template is supported.
--
-- * 'fcSyncConfig' - Undocumented member.
--
-- * 'fcDataSourceName' - The name of the @DataSource@ .
--
-- * 'fcName' - The name of the @Function@ object.
--
-- * 'fcFunctionId' - A unique ID representing the @Function@ object.
--
-- * 'fcFunctionARN' - The ARN of the @Function@ object.
--
-- * 'fcDescription' - The @Function@ description.
--
-- * 'fcRequestMappingTemplate' - The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
functionConfiguration ::
  FunctionConfiguration
functionConfiguration =
  FunctionConfiguration'
    { _fcResponseMappingTemplate =
        Nothing,
      _fcFunctionVersion = Nothing,
      _fcSyncConfig = Nothing,
      _fcDataSourceName = Nothing,
      _fcName = Nothing,
      _fcFunctionId = Nothing,
      _fcFunctionARN = Nothing,
      _fcDescription = Nothing,
      _fcRequestMappingTemplate = Nothing
    }

-- | The @Function@ response mapping template.
fcResponseMappingTemplate :: Lens' FunctionConfiguration (Maybe Text)
fcResponseMappingTemplate = lens _fcResponseMappingTemplate (\s a -> s {_fcResponseMappingTemplate = a})

-- | The version of the request mapping template. Currently only the 2018-05-29 version of the template is supported.
fcFunctionVersion :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionVersion = lens _fcFunctionVersion (\s a -> s {_fcFunctionVersion = a})

-- | Undocumented member.
fcSyncConfig :: Lens' FunctionConfiguration (Maybe SyncConfig)
fcSyncConfig = lens _fcSyncConfig (\s a -> s {_fcSyncConfig = a})

-- | The name of the @DataSource@ .
fcDataSourceName :: Lens' FunctionConfiguration (Maybe Text)
fcDataSourceName = lens _fcDataSourceName (\s a -> s {_fcDataSourceName = a})

-- | The name of the @Function@ object.
fcName :: Lens' FunctionConfiguration (Maybe Text)
fcName = lens _fcName (\s a -> s {_fcName = a})

-- | A unique ID representing the @Function@ object.
fcFunctionId :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionId = lens _fcFunctionId (\s a -> s {_fcFunctionId = a})

-- | The ARN of the @Function@ object.
fcFunctionARN :: Lens' FunctionConfiguration (Maybe Text)
fcFunctionARN = lens _fcFunctionARN (\s a -> s {_fcFunctionARN = a})

-- | The @Function@ description.
fcDescription :: Lens' FunctionConfiguration (Maybe Text)
fcDescription = lens _fcDescription (\s a -> s {_fcDescription = a})

-- | The @Function@ request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
fcRequestMappingTemplate :: Lens' FunctionConfiguration (Maybe Text)
fcRequestMappingTemplate = lens _fcRequestMappingTemplate (\s a -> s {_fcRequestMappingTemplate = a})

instance FromJSON FunctionConfiguration where
  parseJSON =
    withObject
      "FunctionConfiguration"
      ( \x ->
          FunctionConfiguration'
            <$> (x .:? "responseMappingTemplate")
            <*> (x .:? "functionVersion")
            <*> (x .:? "syncConfig")
            <*> (x .:? "dataSourceName")
            <*> (x .:? "name")
            <*> (x .:? "functionId")
            <*> (x .:? "functionArn")
            <*> (x .:? "description")
            <*> (x .:? "requestMappingTemplate")
      )

instance Hashable FunctionConfiguration

instance NFData FunctionConfiguration
