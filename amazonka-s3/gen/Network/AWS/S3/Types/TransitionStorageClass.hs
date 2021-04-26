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
-- Module      : Network.AWS.S3.Types.TransitionStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.TransitionStorageClass
  ( TransitionStorageClass
      ( ..,
        TransitionStorageClassDEEPARCHIVE,
        TransitionStorageClassGLACIER,
        TransitionStorageClassINTELLIGENTTIERING,
        TransitionStorageClassONEZONEIA,
        TransitionStorageClassSTANDARDIA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype TransitionStorageClass = TransitionStorageClass'
  { fromTransitionStorageClass ::
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

pattern TransitionStorageClassDEEPARCHIVE :: TransitionStorageClass
pattern TransitionStorageClassDEEPARCHIVE = TransitionStorageClass' "DEEP_ARCHIVE"

pattern TransitionStorageClassGLACIER :: TransitionStorageClass
pattern TransitionStorageClassGLACIER = TransitionStorageClass' "GLACIER"

pattern TransitionStorageClassINTELLIGENTTIERING :: TransitionStorageClass
pattern TransitionStorageClassINTELLIGENTTIERING = TransitionStorageClass' "INTELLIGENT_TIERING"

pattern TransitionStorageClassONEZONEIA :: TransitionStorageClass
pattern TransitionStorageClassONEZONEIA = TransitionStorageClass' "ONEZONE_IA"

pattern TransitionStorageClassSTANDARDIA :: TransitionStorageClass
pattern TransitionStorageClassSTANDARDIA = TransitionStorageClass' "STANDARD_IA"

{-# COMPLETE
  TransitionStorageClassDEEPARCHIVE,
  TransitionStorageClassGLACIER,
  TransitionStorageClassINTELLIGENTTIERING,
  TransitionStorageClassONEZONEIA,
  TransitionStorageClassSTANDARDIA,
  TransitionStorageClass'
  #-}

instance Prelude.FromText TransitionStorageClass where
  parser = TransitionStorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransitionStorageClass where
  toText (TransitionStorageClass' x) = x

instance Prelude.Hashable TransitionStorageClass

instance Prelude.NFData TransitionStorageClass

instance Prelude.ToByteString TransitionStorageClass

instance Prelude.ToQuery TransitionStorageClass

instance Prelude.ToHeader TransitionStorageClass

instance Prelude.FromXML TransitionStorageClass where
  parseXML = Prelude.parseXMLText "TransitionStorageClass"

instance Prelude.ToXML TransitionStorageClass where
  toXML = Prelude.toXMLText
