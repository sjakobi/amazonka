{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.IntelligentTieringFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.IntelligentTieringFilter where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.IntelligentTieringAndOperator
import Network.AWS.S3.Types.Tag

-- | The @Filter@ is used to identify objects that the S3 Intelligent-Tiering configuration applies to.
--
--
--
-- /See:/ 'intelligentTieringFilter' smart constructor.
data IntelligentTieringFilter = IntelligentTieringFilter'
  { _itfPrefix ::
      !(Maybe Text),
    _itfAnd ::
      !( Maybe
           IntelligentTieringAndOperator
       ),
    _itfTag ::
      !(Maybe Tag)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'IntelligentTieringFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itfPrefix' - An object key name prefix that identifies the subset of objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
--
-- * 'itfAnd' - A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
--
-- * 'itfTag' - Undocumented member.
intelligentTieringFilter ::
  IntelligentTieringFilter
intelligentTieringFilter =
  IntelligentTieringFilter'
    { _itfPrefix = Nothing,
      _itfAnd = Nothing,
      _itfTag = Nothing
    }

-- | An object key name prefix that identifies the subset of objects to which the rule applies. /Important:/ Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints XML related object key constraints> .
itfPrefix :: Lens' IntelligentTieringFilter (Maybe Text)
itfPrefix = lens _itfPrefix (\s a -> s {_itfPrefix = a})

-- | A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The operator must have at least two predicates, and an object must match all of the predicates in order for the filter to apply.
itfAnd :: Lens' IntelligentTieringFilter (Maybe IntelligentTieringAndOperator)
itfAnd = lens _itfAnd (\s a -> s {_itfAnd = a})

-- | Undocumented member.
itfTag :: Lens' IntelligentTieringFilter (Maybe Tag)
itfTag = lens _itfTag (\s a -> s {_itfTag = a})

instance FromXML IntelligentTieringFilter where
  parseXML x =
    IntelligentTieringFilter'
      <$> (x .@? "Prefix") <*> (x .@? "And") <*> (x .@? "Tag")

instance Hashable IntelligentTieringFilter

instance NFData IntelligentTieringFilter

instance ToXML IntelligentTieringFilter where
  toXML IntelligentTieringFilter' {..} =
    mconcat
      [ "Prefix" @= _itfPrefix,
        "And" @= _itfAnd,
        "Tag" @= _itfTag
      ]
