{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types.IntentMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.IntentMetadata where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about an intent.
--
--
--
-- /See:/ 'intentMetadata' smart constructor.
data IntentMetadata = IntentMetadata'
  { _imCreatedDate ::
      !(Maybe POSIX),
    _imLastUpdatedDate :: !(Maybe POSIX),
    _imVersion :: !(Maybe Text),
    _imName :: !(Maybe Text),
    _imDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IntentMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imCreatedDate' - The date that the intent was created.
--
-- * 'imLastUpdatedDate' - The date that the intent was updated. When you create an intent, the creation date and last updated date are the same.
--
-- * 'imVersion' - The version of the intent.
--
-- * 'imName' - The name of the intent.
--
-- * 'imDescription' - A description of the intent.
intentMetadata ::
  IntentMetadata
intentMetadata =
  IntentMetadata'
    { _imCreatedDate = Nothing,
      _imLastUpdatedDate = Nothing,
      _imVersion = Nothing,
      _imName = Nothing,
      _imDescription = Nothing
    }

-- | The date that the intent was created.
imCreatedDate :: Lens' IntentMetadata (Maybe UTCTime)
imCreatedDate = lens _imCreatedDate (\s a -> s {_imCreatedDate = a}) . mapping _Time

-- | The date that the intent was updated. When you create an intent, the creation date and last updated date are the same.
imLastUpdatedDate :: Lens' IntentMetadata (Maybe UTCTime)
imLastUpdatedDate = lens _imLastUpdatedDate (\s a -> s {_imLastUpdatedDate = a}) . mapping _Time

-- | The version of the intent.
imVersion :: Lens' IntentMetadata (Maybe Text)
imVersion = lens _imVersion (\s a -> s {_imVersion = a})

-- | The name of the intent.
imName :: Lens' IntentMetadata (Maybe Text)
imName = lens _imName (\s a -> s {_imName = a})

-- | A description of the intent.
imDescription :: Lens' IntentMetadata (Maybe Text)
imDescription = lens _imDescription (\s a -> s {_imDescription = a})

instance FromJSON IntentMetadata where
  parseJSON =
    withObject
      "IntentMetadata"
      ( \x ->
          IntentMetadata'
            <$> (x .:? "createdDate")
            <*> (x .:? "lastUpdatedDate")
            <*> (x .:? "version")
            <*> (x .:? "name")
            <*> (x .:? "description")
      )

instance Hashable IntentMetadata

instance NFData IntentMetadata
