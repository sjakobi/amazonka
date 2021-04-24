{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ReplaceContentEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ReplaceContentEntry where

import Network.AWS.CodeCommit.Types.FileModeTypeEnum
import Network.AWS.CodeCommit.Types.ReplacementTypeEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a replacement content entry in the conflict of a merge or pull request operation.
--
--
--
-- /See:/ 'replaceContentEntry' smart constructor.
data ReplaceContentEntry = ReplaceContentEntry'
  { _rceContent ::
      !(Maybe Base64),
    _rceFileMode ::
      !(Maybe FileModeTypeEnum),
    _rceFilePath :: !Text,
    _rceReplacementType ::
      !ReplacementTypeEnum
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplaceContentEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rceContent' - The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
--
-- * 'rceFileMode' - The file mode to apply during conflict resoltion.
--
-- * 'rceFilePath' - The path of the conflicting file.
--
-- * 'rceReplacementType' - The replacement type to use when determining how to resolve the conflict.
replaceContentEntry ::
  -- | 'rceFilePath'
  Text ->
  -- | 'rceReplacementType'
  ReplacementTypeEnum ->
  ReplaceContentEntry
replaceContentEntry pFilePath_ pReplacementType_ =
  ReplaceContentEntry'
    { _rceContent = Nothing,
      _rceFileMode = Nothing,
      _rceFilePath = pFilePath_,
      _rceReplacementType = pReplacementType_
    }

-- | The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data. The underlying isomorphism will encode to Base64 representation during serialisation, and decode from Base64 representation during deserialisation. This 'Lens' accepts and returns only raw unencoded data.
rceContent :: Lens' ReplaceContentEntry (Maybe ByteString)
rceContent = lens _rceContent (\s a -> s {_rceContent = a}) . mapping _Base64

-- | The file mode to apply during conflict resoltion.
rceFileMode :: Lens' ReplaceContentEntry (Maybe FileModeTypeEnum)
rceFileMode = lens _rceFileMode (\s a -> s {_rceFileMode = a})

-- | The path of the conflicting file.
rceFilePath :: Lens' ReplaceContentEntry Text
rceFilePath = lens _rceFilePath (\s a -> s {_rceFilePath = a})

-- | The replacement type to use when determining how to resolve the conflict.
rceReplacementType :: Lens' ReplaceContentEntry ReplacementTypeEnum
rceReplacementType = lens _rceReplacementType (\s a -> s {_rceReplacementType = a})

instance Hashable ReplaceContentEntry

instance NFData ReplaceContentEntry

instance ToJSON ReplaceContentEntry where
  toJSON ReplaceContentEntry' {..} =
    object
      ( catMaybes
          [ ("content" .=) <$> _rceContent,
            ("fileMode" .=) <$> _rceFileMode,
            Just ("filePath" .= _rceFilePath),
            Just ("replacementType" .= _rceReplacementType)
          ]
      )
