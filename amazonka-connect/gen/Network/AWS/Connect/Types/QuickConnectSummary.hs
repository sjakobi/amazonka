{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QuickConnectSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QuickConnectSummary where

import Network.AWS.Connect.Types.QuickConnectType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about a quick connect.
--
--
--
-- /See:/ 'quickConnectSummary' smart constructor.
data QuickConnectSummary = QuickConnectSummary'
  { _qcsQuickConnectType ::
      !(Maybe QuickConnectType),
    _qcsARN :: !(Maybe Text),
    _qcsId :: !(Maybe Text),
    _qcsName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QuickConnectSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qcsQuickConnectType' - The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
--
-- * 'qcsARN' - The Amazon Resource Name (ARN) of the quick connect.
--
-- * 'qcsId' - The identifier for the quick connect.
--
-- * 'qcsName' - The name of the quick connect.
quickConnectSummary ::
  QuickConnectSummary
quickConnectSummary =
  QuickConnectSummary'
    { _qcsQuickConnectType =
        Nothing,
      _qcsARN = Nothing,
      _qcsId = Nothing,
      _qcsName = Nothing
    }

-- | The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent (USER), External (PHONE_NUMBER), or Queue (QUEUE).
qcsQuickConnectType :: Lens' QuickConnectSummary (Maybe QuickConnectType)
qcsQuickConnectType = lens _qcsQuickConnectType (\s a -> s {_qcsQuickConnectType = a})

-- | The Amazon Resource Name (ARN) of the quick connect.
qcsARN :: Lens' QuickConnectSummary (Maybe Text)
qcsARN = lens _qcsARN (\s a -> s {_qcsARN = a})

-- | The identifier for the quick connect.
qcsId :: Lens' QuickConnectSummary (Maybe Text)
qcsId = lens _qcsId (\s a -> s {_qcsId = a})

-- | The name of the quick connect.
qcsName :: Lens' QuickConnectSummary (Maybe Text)
qcsName = lens _qcsName (\s a -> s {_qcsName = a})

instance FromJSON QuickConnectSummary where
  parseJSON =
    withObject
      "QuickConnectSummary"
      ( \x ->
          QuickConnectSummary'
            <$> (x .:? "QuickConnectType")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
      )

instance Hashable QuickConnectSummary

instance NFData QuickConnectSummary
