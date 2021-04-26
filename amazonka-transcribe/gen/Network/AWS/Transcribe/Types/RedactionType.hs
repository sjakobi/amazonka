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
-- Module      : Network.AWS.Transcribe.Types.RedactionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.RedactionType
  ( RedactionType
      ( ..,
        RedactionTypePII
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RedactionType = RedactionType'
  { fromRedactionType ::
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

pattern RedactionTypePII :: RedactionType
pattern RedactionTypePII = RedactionType' "PII"

{-# COMPLETE
  RedactionTypePII,
  RedactionType'
  #-}

instance Prelude.FromText RedactionType where
  parser = RedactionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedactionType where
  toText (RedactionType' x) = x

instance Prelude.Hashable RedactionType

instance Prelude.NFData RedactionType

instance Prelude.ToByteString RedactionType

instance Prelude.ToQuery RedactionType

instance Prelude.ToHeader RedactionType

instance Prelude.ToJSON RedactionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RedactionType where
  parseJSON = Prelude.parseJSONText "RedactionType"
