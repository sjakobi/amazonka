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
-- Module      : Network.AWS.CodeCommit.Types.ObjectTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ObjectTypeEnum
  ( ObjectTypeEnum
      ( ..,
        ObjectTypeEnumDIRECTORY,
        ObjectTypeEnumFILE,
        ObjectTypeEnumGITLINK,
        ObjectTypeEnumSYMBOLICLINK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ObjectTypeEnum = ObjectTypeEnum'
  { fromObjectTypeEnum ::
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

pattern ObjectTypeEnumDIRECTORY :: ObjectTypeEnum
pattern ObjectTypeEnumDIRECTORY = ObjectTypeEnum' "DIRECTORY"

pattern ObjectTypeEnumFILE :: ObjectTypeEnum
pattern ObjectTypeEnumFILE = ObjectTypeEnum' "FILE"

pattern ObjectTypeEnumGITLINK :: ObjectTypeEnum
pattern ObjectTypeEnumGITLINK = ObjectTypeEnum' "GIT_LINK"

pattern ObjectTypeEnumSYMBOLICLINK :: ObjectTypeEnum
pattern ObjectTypeEnumSYMBOLICLINK = ObjectTypeEnum' "SYMBOLIC_LINK"

{-# COMPLETE
  ObjectTypeEnumDIRECTORY,
  ObjectTypeEnumFILE,
  ObjectTypeEnumGITLINK,
  ObjectTypeEnumSYMBOLICLINK,
  ObjectTypeEnum'
  #-}

instance Prelude.FromText ObjectTypeEnum where
  parser = ObjectTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ObjectTypeEnum where
  toText (ObjectTypeEnum' x) = x

instance Prelude.Hashable ObjectTypeEnum

instance Prelude.NFData ObjectTypeEnum

instance Prelude.ToByteString ObjectTypeEnum

instance Prelude.ToQuery ObjectTypeEnum

instance Prelude.ToHeader ObjectTypeEnum

instance Prelude.FromJSON ObjectTypeEnum where
  parseJSON = Prelude.parseJSONText "ObjectTypeEnum"
