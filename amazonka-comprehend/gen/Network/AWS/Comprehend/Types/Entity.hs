{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.Entity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.Entity where

import Network.AWS.Comprehend.Types.EntityType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about an entity.
--
--
--
--
--
-- /See:/ 'entity' smart constructor.
data Entity = Entity'
  { _eEndOffset :: !(Maybe Int),
    _eType :: !(Maybe EntityType),
    _eScore :: !(Maybe Double),
    _eText :: !(Maybe Text),
    _eBeginOffset :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Entity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eEndOffset' - A character offset in the input text that shows where the entity ends. The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
--
-- * 'eType' - The entity's type.
--
-- * 'eScore' - The level of confidence that Amazon Comprehend has in the accuracy of the detection.
--
-- * 'eText' - The text of the entity.
--
-- * 'eBeginOffset' - A character offset in the input text that shows where the entity begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
entity ::
  Entity
entity =
  Entity'
    { _eEndOffset = Nothing,
      _eType = Nothing,
      _eScore = Nothing,
      _eText = Nothing,
      _eBeginOffset = Nothing
    }

-- | A character offset in the input text that shows where the entity ends. The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
eEndOffset :: Lens' Entity (Maybe Int)
eEndOffset = lens _eEndOffset (\s a -> s {_eEndOffset = a})

-- | The entity's type.
eType :: Lens' Entity (Maybe EntityType)
eType = lens _eType (\s a -> s {_eType = a})

-- | The level of confidence that Amazon Comprehend has in the accuracy of the detection.
eScore :: Lens' Entity (Maybe Double)
eScore = lens _eScore (\s a -> s {_eScore = a})

-- | The text of the entity.
eText :: Lens' Entity (Maybe Text)
eText = lens _eText (\s a -> s {_eText = a})

-- | A character offset in the input text that shows where the entity begins (the first character is at position 0). The offset returns the position of each UTF-8 code point in the string. A /code point/ is the abstract character from a particular graphical representation. For example, a multi-byte UTF-8 character maps to a single code point.
eBeginOffset :: Lens' Entity (Maybe Int)
eBeginOffset = lens _eBeginOffset (\s a -> s {_eBeginOffset = a})

instance FromJSON Entity where
  parseJSON =
    withObject
      "Entity"
      ( \x ->
          Entity'
            <$> (x .:? "EndOffset")
            <*> (x .:? "Type")
            <*> (x .:? "Score")
            <*> (x .:? "Text")
            <*> (x .:? "BeginOffset")
      )

instance Hashable Entity

instance NFData Entity
