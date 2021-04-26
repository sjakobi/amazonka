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
-- Module      : Network.AWS.CloudFormation.Types.ChangeSetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSetType
  ( ChangeSetType
      ( ..,
        ChangeSetTypeCREATE,
        ChangeSetTypeIMPORT,
        ChangeSetTypeUPDATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeSetType = ChangeSetType'
  { fromChangeSetType ::
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

pattern ChangeSetTypeCREATE :: ChangeSetType
pattern ChangeSetTypeCREATE = ChangeSetType' "CREATE"

pattern ChangeSetTypeIMPORT :: ChangeSetType
pattern ChangeSetTypeIMPORT = ChangeSetType' "IMPORT"

pattern ChangeSetTypeUPDATE :: ChangeSetType
pattern ChangeSetTypeUPDATE = ChangeSetType' "UPDATE"

{-# COMPLETE
  ChangeSetTypeCREATE,
  ChangeSetTypeIMPORT,
  ChangeSetTypeUPDATE,
  ChangeSetType'
  #-}

instance Prelude.FromText ChangeSetType where
  parser = ChangeSetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeSetType where
  toText (ChangeSetType' x) = x

instance Prelude.Hashable ChangeSetType

instance Prelude.NFData ChangeSetType

instance Prelude.ToByteString ChangeSetType

instance Prelude.ToQuery ChangeSetType

instance Prelude.ToHeader ChangeSetType
