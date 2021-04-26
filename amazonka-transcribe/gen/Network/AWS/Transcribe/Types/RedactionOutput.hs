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
-- Module      : Network.AWS.Transcribe.Types.RedactionOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.RedactionOutput
  ( RedactionOutput
      ( ..,
        RedactionOutputRedacted,
        RedactionOutputRedactedAndUnredacted
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RedactionOutput = RedactionOutput'
  { fromRedactionOutput ::
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

pattern RedactionOutputRedacted :: RedactionOutput
pattern RedactionOutputRedacted = RedactionOutput' "redacted"

pattern RedactionOutputRedactedAndUnredacted :: RedactionOutput
pattern RedactionOutputRedactedAndUnredacted = RedactionOutput' "redacted_and_unredacted"

{-# COMPLETE
  RedactionOutputRedacted,
  RedactionOutputRedactedAndUnredacted,
  RedactionOutput'
  #-}

instance Prelude.FromText RedactionOutput where
  parser = RedactionOutput' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedactionOutput where
  toText (RedactionOutput' x) = x

instance Prelude.Hashable RedactionOutput

instance Prelude.NFData RedactionOutput

instance Prelude.ToByteString RedactionOutput

instance Prelude.ToQuery RedactionOutput

instance Prelude.ToHeader RedactionOutput

instance Prelude.ToJSON RedactionOutput where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RedactionOutput where
  parseJSON = Prelude.parseJSONText "RedactionOutput"
