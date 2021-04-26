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
-- Module      : Network.AWS.AppSync.Types.ConflictHandlerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ConflictHandlerType
  ( ConflictHandlerType
      ( ..,
        ConflictHandlerTypeAUTOMERGE,
        ConflictHandlerTypeLAMBDA,
        ConflictHandlerTypeNONE,
        ConflictHandlerTypeOPTIMISTICCONCURRENCY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConflictHandlerType = ConflictHandlerType'
  { fromConflictHandlerType ::
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

pattern ConflictHandlerTypeAUTOMERGE :: ConflictHandlerType
pattern ConflictHandlerTypeAUTOMERGE = ConflictHandlerType' "AUTOMERGE"

pattern ConflictHandlerTypeLAMBDA :: ConflictHandlerType
pattern ConflictHandlerTypeLAMBDA = ConflictHandlerType' "LAMBDA"

pattern ConflictHandlerTypeNONE :: ConflictHandlerType
pattern ConflictHandlerTypeNONE = ConflictHandlerType' "NONE"

pattern ConflictHandlerTypeOPTIMISTICCONCURRENCY :: ConflictHandlerType
pattern ConflictHandlerTypeOPTIMISTICCONCURRENCY = ConflictHandlerType' "OPTIMISTIC_CONCURRENCY"

{-# COMPLETE
  ConflictHandlerTypeAUTOMERGE,
  ConflictHandlerTypeLAMBDA,
  ConflictHandlerTypeNONE,
  ConflictHandlerTypeOPTIMISTICCONCURRENCY,
  ConflictHandlerType'
  #-}

instance Prelude.FromText ConflictHandlerType where
  parser = ConflictHandlerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConflictHandlerType where
  toText (ConflictHandlerType' x) = x

instance Prelude.Hashable ConflictHandlerType

instance Prelude.NFData ConflictHandlerType

instance Prelude.ToByteString ConflictHandlerType

instance Prelude.ToQuery ConflictHandlerType

instance Prelude.ToHeader ConflictHandlerType

instance Prelude.ToJSON ConflictHandlerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConflictHandlerType where
  parseJSON = Prelude.parseJSONText "ConflictHandlerType"
