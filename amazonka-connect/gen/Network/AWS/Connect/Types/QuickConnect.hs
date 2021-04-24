{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QuickConnect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QuickConnect where

import Network.AWS.Connect.Types.QuickConnectConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a quick connect.
--
--
--
-- /See:/ 'quickConnect' smart constructor.
data QuickConnect = QuickConnect'
  { _qcQuickConnectId ::
      !(Maybe Text),
    _qcName :: !(Maybe Text),
    _qcTags :: !(Maybe (Map Text Text)),
    _qcQuickConnectConfig ::
      !(Maybe QuickConnectConfig),
    _qcQuickConnectARN :: !(Maybe Text),
    _qcDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QuickConnect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcQuickConnectId' - The identifier for the quick connect.
--
-- * 'qcName' - The name of the quick connect.
--
-- * 'qcTags' - One or more tags.
--
-- * 'qcQuickConnectConfig' - Contains information about the quick connect.
--
-- * 'qcQuickConnectARN' - The Amazon Resource Name (ARN) of the quick connect.
--
-- * 'qcDescription' - The description.
quickConnect ::
  QuickConnect
quickConnect =
  QuickConnect'
    { _qcQuickConnectId = Nothing,
      _qcName = Nothing,
      _qcTags = Nothing,
      _qcQuickConnectConfig = Nothing,
      _qcQuickConnectARN = Nothing,
      _qcDescription = Nothing
    }

-- | The identifier for the quick connect.
qcQuickConnectId :: Lens' QuickConnect (Maybe Text)
qcQuickConnectId = lens _qcQuickConnectId (\s a -> s {_qcQuickConnectId = a})

-- | The name of the quick connect.
qcName :: Lens' QuickConnect (Maybe Text)
qcName = lens _qcName (\s a -> s {_qcName = a})

-- | One or more tags.
qcTags :: Lens' QuickConnect (HashMap Text Text)
qcTags = lens _qcTags (\s a -> s {_qcTags = a}) . _Default . _Map

-- | Contains information about the quick connect.
qcQuickConnectConfig :: Lens' QuickConnect (Maybe QuickConnectConfig)
qcQuickConnectConfig = lens _qcQuickConnectConfig (\s a -> s {_qcQuickConnectConfig = a})

-- | The Amazon Resource Name (ARN) of the quick connect.
qcQuickConnectARN :: Lens' QuickConnect (Maybe Text)
qcQuickConnectARN = lens _qcQuickConnectARN (\s a -> s {_qcQuickConnectARN = a})

-- | The description.
qcDescription :: Lens' QuickConnect (Maybe Text)
qcDescription = lens _qcDescription (\s a -> s {_qcDescription = a})

instance FromJSON QuickConnect where
  parseJSON =
    withObject
      "QuickConnect"
      ( \x ->
          QuickConnect'
            <$> (x .:? "QuickConnectId")
            <*> (x .:? "Name")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "QuickConnectConfig")
            <*> (x .:? "QuickConnectARN")
            <*> (x .:? "Description")
      )

instance Hashable QuickConnect

instance NFData QuickConnect
