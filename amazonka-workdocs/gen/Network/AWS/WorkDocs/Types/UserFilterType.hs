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
-- Module      : Network.AWS.WorkDocs.Types.UserFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserFilterType
  ( UserFilterType
      ( ..,
        UserFilterTypeACTIVEPENDING,
        UserFilterTypeALL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserFilterType = UserFilterType'
  { fromUserFilterType ::
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

pattern UserFilterTypeACTIVEPENDING :: UserFilterType
pattern UserFilterTypeACTIVEPENDING = UserFilterType' "ACTIVE_PENDING"

pattern UserFilterTypeALL :: UserFilterType
pattern UserFilterTypeALL = UserFilterType' "ALL"

{-# COMPLETE
  UserFilterTypeACTIVEPENDING,
  UserFilterTypeALL,
  UserFilterType'
  #-}

instance Prelude.FromText UserFilterType where
  parser = UserFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserFilterType where
  toText (UserFilterType' x) = x

instance Prelude.Hashable UserFilterType

instance Prelude.NFData UserFilterType

instance Prelude.ToByteString UserFilterType

instance Prelude.ToQuery UserFilterType

instance Prelude.ToHeader UserFilterType

instance Prelude.ToJSON UserFilterType where
  toJSON = Prelude.toJSONText
