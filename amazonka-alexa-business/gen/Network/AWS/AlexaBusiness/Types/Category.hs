{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Category
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Category where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The skill store category that is shown. Alexa skills are assigned a specific skill category during creation, such as News, Social, and Sports.
--
--
--
-- /See:/ 'category' smart constructor.
data Category = Category'
  { _cCategoryId ::
      !(Maybe Nat),
    _cCategoryName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Category' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCategoryId' - The ID of the skill store category.
--
-- * 'cCategoryName' - The name of the skill store category.
category ::
  Category
category =
  Category'
    { _cCategoryId = Nothing,
      _cCategoryName = Nothing
    }

-- | The ID of the skill store category.
cCategoryId :: Lens' Category (Maybe Natural)
cCategoryId = lens _cCategoryId (\s a -> s {_cCategoryId = a}) . mapping _Nat

-- | The name of the skill store category.
cCategoryName :: Lens' Category (Maybe Text)
cCategoryName = lens _cCategoryName (\s a -> s {_cCategoryName = a})

instance FromJSON Category where
  parseJSON =
    withObject
      "Category"
      ( \x ->
          Category'
            <$> (x .:? "CategoryId") <*> (x .:? "CategoryName")
      )

instance Hashable Category

instance NFData Category
