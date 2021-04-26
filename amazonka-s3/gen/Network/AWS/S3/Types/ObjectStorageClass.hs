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
-- Module      : Network.AWS.S3.Types.ObjectStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.ObjectStorageClass
  ( ObjectStorageClass
      ( ..,
        ObjectStorageClassGLACIER,
        ObjectStorageClassINTELLIGENTTIERING,
        ObjectStorageClassREDUCEDREDUNDANCY,
        ObjectStorageClassSTANDARD,
        ObjectStorageClassSTANDARDIA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype ObjectStorageClass = ObjectStorageClass'
  { fromObjectStorageClass ::
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

pattern ObjectStorageClassGLACIER :: ObjectStorageClass
pattern ObjectStorageClassGLACIER = ObjectStorageClass' "GLACIER"

pattern ObjectStorageClassINTELLIGENTTIERING :: ObjectStorageClass
pattern ObjectStorageClassINTELLIGENTTIERING = ObjectStorageClass' "INTELLIGENT_TIERING"

pattern ObjectStorageClassREDUCEDREDUNDANCY :: ObjectStorageClass
pattern ObjectStorageClassREDUCEDREDUNDANCY = ObjectStorageClass' "REDUCED_REDUNDANCY"

pattern ObjectStorageClassSTANDARD :: ObjectStorageClass
pattern ObjectStorageClassSTANDARD = ObjectStorageClass' "STANDARD"

pattern ObjectStorageClassSTANDARDIA :: ObjectStorageClass
pattern ObjectStorageClassSTANDARDIA = ObjectStorageClass' "STANDARD_IA"

{-# COMPLETE
  ObjectStorageClassGLACIER,
  ObjectStorageClassINTELLIGENTTIERING,
  ObjectStorageClassREDUCEDREDUNDANCY,
  ObjectStorageClassSTANDARD,
  ObjectStorageClassSTANDARDIA,
  ObjectStorageClass'
  #-}

instance Prelude.FromText ObjectStorageClass where
  parser = ObjectStorageClass' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectStorageClass where
  toText (ObjectStorageClass' x) = x

instance Prelude.Hashable ObjectStorageClass

instance Prelude.NFData ObjectStorageClass

instance Prelude.ToByteString ObjectStorageClass

instance Prelude.ToQuery ObjectStorageClass

instance Prelude.ToHeader ObjectStorageClass

instance Prelude.FromXML ObjectStorageClass where
  parseXML = Prelude.parseXMLText "ObjectStorageClass"
