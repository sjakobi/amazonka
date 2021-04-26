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
-- Module      : Network.AWS.CodeDeploy.Types.ApplicationRevisionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ApplicationRevisionSortBy
  ( ApplicationRevisionSortBy
      ( ..,
        ApplicationRevisionSortByFirstUsedTime,
        ApplicationRevisionSortByLastUsedTime,
        ApplicationRevisionSortByRegisterTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApplicationRevisionSortBy = ApplicationRevisionSortBy'
  { fromApplicationRevisionSortBy ::
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

pattern ApplicationRevisionSortByFirstUsedTime :: ApplicationRevisionSortBy
pattern ApplicationRevisionSortByFirstUsedTime = ApplicationRevisionSortBy' "firstUsedTime"

pattern ApplicationRevisionSortByLastUsedTime :: ApplicationRevisionSortBy
pattern ApplicationRevisionSortByLastUsedTime = ApplicationRevisionSortBy' "lastUsedTime"

pattern ApplicationRevisionSortByRegisterTime :: ApplicationRevisionSortBy
pattern ApplicationRevisionSortByRegisterTime = ApplicationRevisionSortBy' "registerTime"

{-# COMPLETE
  ApplicationRevisionSortByFirstUsedTime,
  ApplicationRevisionSortByLastUsedTime,
  ApplicationRevisionSortByRegisterTime,
  ApplicationRevisionSortBy'
  #-}

instance Prelude.FromText ApplicationRevisionSortBy where
  parser = ApplicationRevisionSortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApplicationRevisionSortBy where
  toText (ApplicationRevisionSortBy' x) = x

instance Prelude.Hashable ApplicationRevisionSortBy

instance Prelude.NFData ApplicationRevisionSortBy

instance Prelude.ToByteString ApplicationRevisionSortBy

instance Prelude.ToQuery ApplicationRevisionSortBy

instance Prelude.ToHeader ApplicationRevisionSortBy

instance Prelude.ToJSON ApplicationRevisionSortBy where
  toJSON = Prelude.toJSONText
