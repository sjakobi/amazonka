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
-- Module      : Network.AWS.SageMaker.Types.CodeRepositorySortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CodeRepositorySortBy
  ( CodeRepositorySortBy
      ( ..,
        CodeRepositorySortByCreationTime,
        CodeRepositorySortByLastModifiedTime,
        CodeRepositorySortByName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CodeRepositorySortBy = CodeRepositorySortBy'
  { fromCodeRepositorySortBy ::
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

pattern CodeRepositorySortByCreationTime :: CodeRepositorySortBy
pattern CodeRepositorySortByCreationTime = CodeRepositorySortBy' "CreationTime"

pattern CodeRepositorySortByLastModifiedTime :: CodeRepositorySortBy
pattern CodeRepositorySortByLastModifiedTime = CodeRepositorySortBy' "LastModifiedTime"

pattern CodeRepositorySortByName :: CodeRepositorySortBy
pattern CodeRepositorySortByName = CodeRepositorySortBy' "Name"

{-# COMPLETE
  CodeRepositorySortByCreationTime,
  CodeRepositorySortByLastModifiedTime,
  CodeRepositorySortByName,
  CodeRepositorySortBy'
  #-}

instance Prelude.FromText CodeRepositorySortBy where
  parser = CodeRepositorySortBy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CodeRepositorySortBy where
  toText (CodeRepositorySortBy' x) = x

instance Prelude.Hashable CodeRepositorySortBy

instance Prelude.NFData CodeRepositorySortBy

instance Prelude.ToByteString CodeRepositorySortBy

instance Prelude.ToQuery CodeRepositorySortBy

instance Prelude.ToHeader CodeRepositorySortBy

instance Prelude.ToJSON CodeRepositorySortBy where
  toJSON = Prelude.toJSONText
