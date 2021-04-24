{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttribute where

import Network.AWS.CloudDirectory.Types.FacetAttributeDefinition
import Network.AWS.CloudDirectory.Types.FacetAttributeReference
import Network.AWS.CloudDirectory.Types.RequiredAttributeBehavior
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An attribute that is associated with the 'Facet' .
--
--
--
-- /See:/ 'facetAttribute' smart constructor.
data FacetAttribute = FacetAttribute'
  { _faAttributeReference ::
      !(Maybe FacetAttributeReference),
    _faRequiredBehavior ::
      !(Maybe RequiredAttributeBehavior),
    _faAttributeDefinition ::
      !(Maybe FacetAttributeDefinition),
    _faName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'FacetAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faAttributeReference' - An attribute reference that is associated with the attribute. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References> for more information.
--
-- * 'faRequiredBehavior' - The required behavior of the @FacetAttribute@ .
--
-- * 'faAttributeDefinition' - A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References> for more information.
--
-- * 'faName' - The name of the facet attribute.
facetAttribute ::
  -- | 'faName'
  Text ->
  FacetAttribute
facetAttribute pName_ =
  FacetAttribute'
    { _faAttributeReference = Nothing,
      _faRequiredBehavior = Nothing,
      _faAttributeDefinition = Nothing,
      _faName = pName_
    }

-- | An attribute reference that is associated with the attribute. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References> for more information.
faAttributeReference :: Lens' FacetAttribute (Maybe FacetAttributeReference)
faAttributeReference = lens _faAttributeReference (\s a -> s {_faAttributeReference = a})

-- | The required behavior of the @FacetAttribute@ .
faRequiredBehavior :: Lens' FacetAttribute (Maybe RequiredAttributeBehavior)
faRequiredBehavior = lens _faRequiredBehavior (\s a -> s {_faRequiredBehavior = a})

-- | A facet attribute consists of either a definition or a reference. This structure contains the attribute definition. See <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References> for more information.
faAttributeDefinition :: Lens' FacetAttribute (Maybe FacetAttributeDefinition)
faAttributeDefinition = lens _faAttributeDefinition (\s a -> s {_faAttributeDefinition = a})

-- | The name of the facet attribute.
faName :: Lens' FacetAttribute Text
faName = lens _faName (\s a -> s {_faName = a})

instance FromJSON FacetAttribute where
  parseJSON =
    withObject
      "FacetAttribute"
      ( \x ->
          FacetAttribute'
            <$> (x .:? "AttributeReference")
            <*> (x .:? "RequiredBehavior")
            <*> (x .:? "AttributeDefinition")
            <*> (x .: "Name")
      )

instance Hashable FacetAttribute

instance NFData FacetAttribute

instance ToJSON FacetAttribute where
  toJSON FacetAttribute' {..} =
    object
      ( catMaybes
          [ ("AttributeReference" .=) <$> _faAttributeReference,
            ("RequiredBehavior" .=) <$> _faRequiredBehavior,
            ("AttributeDefinition" .=)
              <$> _faAttributeDefinition,
            Just ("Name" .= _faName)
          ]
      )
