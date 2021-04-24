{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.DocumentLabel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DocumentLabel where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies one of the label or labels that categorize the document being analyzed.
--
--
--
-- /See:/ 'documentLabel' smart constructor.
data DocumentLabel = DocumentLabel'
  { _dName ::
      !(Maybe Text),
    _dScore :: !(Maybe Double)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DocumentLabel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dName' - The name of the label.
--
-- * 'dScore' - The confidence score that Amazon Comprehend has this label correctly attributed.
documentLabel ::
  DocumentLabel
documentLabel =
  DocumentLabel' {_dName = Nothing, _dScore = Nothing}

-- | The name of the label.
dName :: Lens' DocumentLabel (Maybe Text)
dName = lens _dName (\s a -> s {_dName = a})

-- | The confidence score that Amazon Comprehend has this label correctly attributed.
dScore :: Lens' DocumentLabel (Maybe Double)
dScore = lens _dScore (\s a -> s {_dScore = a})

instance FromJSON DocumentLabel where
  parseJSON =
    withObject
      "DocumentLabel"
      ( \x ->
          DocumentLabel'
            <$> (x .:? "Name") <*> (x .:? "Score")
      )

instance Hashable DocumentLabel

instance NFData DocumentLabel
