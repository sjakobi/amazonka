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
-- Module      : Network.AWS.EC2.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OperationType
  ( OperationType
      ( ..,
        OperationTypeAdd,
        OperationTypeRemove
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype OperationType = OperationType'
  { fromOperationType ::
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

pattern OperationTypeAdd :: OperationType
pattern OperationTypeAdd = OperationType' "add"

pattern OperationTypeRemove :: OperationType
pattern OperationTypeRemove = OperationType' "remove"

{-# COMPLETE
  OperationTypeAdd,
  OperationTypeRemove,
  OperationType'
  #-}

instance Prelude.FromText OperationType where
  parser = OperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText OperationType where
  toText (OperationType' x) = x

instance Prelude.Hashable OperationType

instance Prelude.NFData OperationType

instance Prelude.ToByteString OperationType

instance Prelude.ToQuery OperationType

instance Prelude.ToHeader OperationType
