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
-- Module      : Network.AWS.ServiceCatalog.Types.StackSetOperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.StackSetOperationType
  ( StackSetOperationType
      ( ..,
        StackSetOperationTypeCREATE,
        StackSetOperationTypeDELETE,
        StackSetOperationTypeUPDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetOperationType = StackSetOperationType'
  { fromStackSetOperationType ::
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

pattern StackSetOperationTypeCREATE :: StackSetOperationType
pattern StackSetOperationTypeCREATE = StackSetOperationType' "CREATE"

pattern StackSetOperationTypeDELETE :: StackSetOperationType
pattern StackSetOperationTypeDELETE = StackSetOperationType' "DELETE"

pattern StackSetOperationTypeUPDATE :: StackSetOperationType
pattern StackSetOperationTypeUPDATE = StackSetOperationType' "UPDATE"

{-# COMPLETE
  StackSetOperationTypeCREATE,
  StackSetOperationTypeDELETE,
  StackSetOperationTypeUPDATE,
  StackSetOperationType'
  #-}

instance Prelude.FromText StackSetOperationType where
  parser = StackSetOperationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetOperationType where
  toText (StackSetOperationType' x) = x

instance Prelude.Hashable StackSetOperationType

instance Prelude.NFData StackSetOperationType

instance Prelude.ToByteString StackSetOperationType

instance Prelude.ToQuery StackSetOperationType

instance Prelude.ToHeader StackSetOperationType

instance Prelude.ToJSON StackSetOperationType where
  toJSON = Prelude.toJSONText
