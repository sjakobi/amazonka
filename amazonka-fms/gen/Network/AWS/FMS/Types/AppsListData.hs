{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.AppsListData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.AppsListData where

import Network.AWS.FMS.Types.App
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An AWS Firewall Manager applications list.
--
--
--
-- /See:/ 'appsListData' smart constructor.
data AppsListData = AppsListData'
  { _aldLastUpdateTime ::
      !(Maybe POSIX),
    _aldListId :: !(Maybe Text),
    _aldPreviousAppsList ::
      !(Maybe (Map Text [App])),
    _aldCreateTime :: !(Maybe POSIX),
    _aldListUpdateToken :: !(Maybe Text),
    _aldListName :: !Text,
    _aldAppsList :: ![App]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsListData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aldLastUpdateTime' - The time that the AWS Firewall Manager applications list was last updated.
--
-- * 'aldListId' - The ID of the AWS Firewall Manager applications list.
--
-- * 'aldPreviousAppsList' - A map of previous version numbers to their corresponding @App@ object arrays.
--
-- * 'aldCreateTime' - The time that the AWS Firewall Manager applications list was created.
--
-- * 'aldListUpdateToken' - A unique identifier for each update to the list. When you update the list, the update token must match the token of the current version of the application list. You can retrieve the update token by getting the list.
--
-- * 'aldListName' - The name of the AWS Firewall Manager applications list.
--
-- * 'aldAppsList' - An array of applications in the AWS Firewall Manager applications list.
appsListData ::
  -- | 'aldListName'
  Text ->
  AppsListData
appsListData pListName_ =
  AppsListData'
    { _aldLastUpdateTime = Nothing,
      _aldListId = Nothing,
      _aldPreviousAppsList = Nothing,
      _aldCreateTime = Nothing,
      _aldListUpdateToken = Nothing,
      _aldListName = pListName_,
      _aldAppsList = mempty
    }

-- | The time that the AWS Firewall Manager applications list was last updated.
aldLastUpdateTime :: Lens' AppsListData (Maybe UTCTime)
aldLastUpdateTime = lens _aldLastUpdateTime (\s a -> s {_aldLastUpdateTime = a}) . mapping _Time

-- | The ID of the AWS Firewall Manager applications list.
aldListId :: Lens' AppsListData (Maybe Text)
aldListId = lens _aldListId (\s a -> s {_aldListId = a})

-- | A map of previous version numbers to their corresponding @App@ object arrays.
aldPreviousAppsList :: Lens' AppsListData (HashMap Text [App])
aldPreviousAppsList = lens _aldPreviousAppsList (\s a -> s {_aldPreviousAppsList = a}) . _Default . _Map

-- | The time that the AWS Firewall Manager applications list was created.
aldCreateTime :: Lens' AppsListData (Maybe UTCTime)
aldCreateTime = lens _aldCreateTime (\s a -> s {_aldCreateTime = a}) . mapping _Time

-- | A unique identifier for each update to the list. When you update the list, the update token must match the token of the current version of the application list. You can retrieve the update token by getting the list.
aldListUpdateToken :: Lens' AppsListData (Maybe Text)
aldListUpdateToken = lens _aldListUpdateToken (\s a -> s {_aldListUpdateToken = a})

-- | The name of the AWS Firewall Manager applications list.
aldListName :: Lens' AppsListData Text
aldListName = lens _aldListName (\s a -> s {_aldListName = a})

-- | An array of applications in the AWS Firewall Manager applications list.
aldAppsList :: Lens' AppsListData [App]
aldAppsList = lens _aldAppsList (\s a -> s {_aldAppsList = a}) . _Coerce

instance FromJSON AppsListData where
  parseJSON =
    withObject
      "AppsListData"
      ( \x ->
          AppsListData'
            <$> (x .:? "LastUpdateTime")
            <*> (x .:? "ListId")
            <*> (x .:? "PreviousAppsList" .!= mempty)
            <*> (x .:? "CreateTime")
            <*> (x .:? "ListUpdateToken")
            <*> (x .: "ListName")
            <*> (x .:? "AppsList" .!= mempty)
      )

instance Hashable AppsListData

instance NFData AppsListData

instance ToJSON AppsListData where
  toJSON AppsListData' {..} =
    object
      ( catMaybes
          [ ("LastUpdateTime" .=) <$> _aldLastUpdateTime,
            ("ListId" .=) <$> _aldListId,
            ("PreviousAppsList" .=) <$> _aldPreviousAppsList,
            ("CreateTime" .=) <$> _aldCreateTime,
            ("ListUpdateToken" .=) <$> _aldListUpdateToken,
            Just ("ListName" .= _aldListName),
            Just ("AppsList" .= _aldAppsList)
          ]
      )
