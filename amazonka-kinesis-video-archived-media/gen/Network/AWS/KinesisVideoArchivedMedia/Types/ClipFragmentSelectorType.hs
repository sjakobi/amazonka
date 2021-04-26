{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideoArchivedMedia.Types.ClipFragmentSelectorType
  ( ClipFragmentSelectorType
      ( ..,
        ClipFragmentSelectorTypePRODUCERTIMESTAMP,
        ClipFragmentSelectorTypeSERVERTIMESTAMP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClipFragmentSelectorType = ClipFragmentSelectorType'
  { fromClipFragmentSelectorType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ClipFragmentSelectorTypePRODUCERTIMESTAMP :: ClipFragmentSelectorType
pattern ClipFragmentSelectorTypePRODUCERTIMESTAMP = ClipFragmentSelectorType' "PRODUCER_TIMESTAMP"

pattern ClipFragmentSelectorTypeSERVERTIMESTAMP :: ClipFragmentSelectorType
pattern ClipFragmentSelectorTypeSERVERTIMESTAMP = ClipFragmentSelectorType' "SERVER_TIMESTAMP"

{-# COMPLETE
  ClipFragmentSelectorTypePRODUCERTIMESTAMP,
  ClipFragmentSelectorTypeSERVERTIMESTAMP,
  ClipFragmentSelectorType'
  #-}

instance Prelude.FromText ClipFragmentSelectorType where
  parser = ClipFragmentSelectorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClipFragmentSelectorType where
  toText (ClipFragmentSelectorType' x) = x

instance Prelude.Hashable ClipFragmentSelectorType

instance Prelude.NFData ClipFragmentSelectorType

instance Prelude.ToByteString ClipFragmentSelectorType

instance Prelude.ToQuery ClipFragmentSelectorType

instance Prelude.ToHeader ClipFragmentSelectorType

instance Prelude.ToJSON ClipFragmentSelectorType where
  toJSON = Prelude.toJSONText
