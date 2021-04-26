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
-- Module      : Network.AWS.S3.Types.TaggingDirective
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.TaggingDirective
  ( TaggingDirective
      ( ..,
        TaggingDirectiveCOPY,
        TaggingDirectiveREPLACE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype TaggingDirective = TaggingDirective'
  { fromTaggingDirective ::
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

pattern TaggingDirectiveCOPY :: TaggingDirective
pattern TaggingDirectiveCOPY = TaggingDirective' "COPY"

pattern TaggingDirectiveREPLACE :: TaggingDirective
pattern TaggingDirectiveREPLACE = TaggingDirective' "REPLACE"

{-# COMPLETE
  TaggingDirectiveCOPY,
  TaggingDirectiveREPLACE,
  TaggingDirective'
  #-}

instance Prelude.FromText TaggingDirective where
  parser = TaggingDirective' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaggingDirective where
  toText (TaggingDirective' x) = x

instance Prelude.Hashable TaggingDirective

instance Prelude.NFData TaggingDirective

instance Prelude.ToByteString TaggingDirective

instance Prelude.ToQuery TaggingDirective

instance Prelude.ToHeader TaggingDirective

instance Prelude.ToXML TaggingDirective where
  toXML = Prelude.toXMLText
