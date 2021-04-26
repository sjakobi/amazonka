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
-- Module      : Network.AWS.S3.Types.MetadataDirective
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MetadataDirective
  ( MetadataDirective
      ( ..,
        MetadataDirectiveCOPY,
        MetadataDirectiveREPLACE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype MetadataDirective = MetadataDirective'
  { fromMetadataDirective ::
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

pattern MetadataDirectiveCOPY :: MetadataDirective
pattern MetadataDirectiveCOPY = MetadataDirective' "COPY"

pattern MetadataDirectiveREPLACE :: MetadataDirective
pattern MetadataDirectiveREPLACE = MetadataDirective' "REPLACE"

{-# COMPLETE
  MetadataDirectiveCOPY,
  MetadataDirectiveREPLACE,
  MetadataDirective'
  #-}

instance Prelude.FromText MetadataDirective where
  parser = MetadataDirective' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetadataDirective where
  toText (MetadataDirective' x) = x

instance Prelude.Hashable MetadataDirective

instance Prelude.NFData MetadataDirective

instance Prelude.ToByteString MetadataDirective

instance Prelude.ToQuery MetadataDirective

instance Prelude.ToHeader MetadataDirective

instance Prelude.ToXML MetadataDirective where
  toXML = Prelude.toXMLText
