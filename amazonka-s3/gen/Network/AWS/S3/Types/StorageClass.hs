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
-- Module      : Network.AWS.S3.Types.StorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.StorageClass
  ( StorageClass
      ( ..,
        StorageClassDEEPARCHIVE,
        StorageClassGLACIER,
        StorageClassINTELLIGENTTIERING,
        StorageClassONEZONEIA,
        StorageClassOUTPOSTS,
        StorageClassREDUCEDREDUNDANCY,
        StorageClassSTANDARD,
        StorageClassSTANDARDIA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype StorageClass = StorageClass'
  { fromStorageClass ::
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

pattern StorageClassDEEPARCHIVE :: StorageClass
pattern StorageClassDEEPARCHIVE = StorageClass' "DEEP_ARCHIVE"

pattern StorageClassGLACIER :: StorageClass
pattern StorageClassGLACIER = StorageClass' "GLACIER"

pattern StorageClassINTELLIGENTTIERING :: StorageClass
pattern StorageClassINTELLIGENTTIERING = StorageClass' "INTELLIGENT_TIERING"

pattern StorageClassONEZONEIA :: StorageClass
pattern StorageClassONEZONEIA = StorageClass' "ONEZONE_IA"

pattern StorageClassOUTPOSTS :: StorageClass
pattern StorageClassOUTPOSTS = StorageClass' "OUTPOSTS"

pattern StorageClassREDUCEDREDUNDANCY :: StorageClass
pattern StorageClassREDUCEDREDUNDANCY = StorageClass' "REDUCED_REDUNDANCY"

pattern StorageClassSTANDARD :: StorageClass
pattern StorageClassSTANDARD = StorageClass' "STANDARD"

pattern StorageClassSTANDARDIA :: StorageClass
pattern StorageClassSTANDARDIA = StorageClass' "STANDARD_IA"

{-# COMPLETE
  StorageClassDEEPARCHIVE,
  StorageClassGLACIER,
  StorageClassINTELLIGENTTIERING,
  StorageClassONEZONEIA,
  StorageClassOUTPOSTS,
  StorageClassREDUCEDREDUNDANCY,
  StorageClassSTANDARD,
  StorageClassSTANDARDIA,
  StorageClass'
  #-}

instance Prelude.FromText StorageClass where
  parser = StorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText StorageClass where
  toText (StorageClass' x) = x

instance Prelude.Hashable StorageClass

instance Prelude.NFData StorageClass

instance Prelude.ToByteString StorageClass

instance Prelude.ToQuery StorageClass

instance Prelude.ToHeader StorageClass

instance Prelude.FromXML StorageClass where
  parseXML = Prelude.parseXMLText "StorageClass"

instance Prelude.ToXML StorageClass where
  toXML = Prelude.toXMLText
