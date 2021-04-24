{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ProvisioningTemplateSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ProvisioningTemplateSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of information about a fleet provisioning template.
--
--
--
-- /See:/ 'provisioningTemplateSummary' smart constructor.
data ProvisioningTemplateSummary = ProvisioningTemplateSummary'
  { _ptsTemplateName ::
      !(Maybe Text),
    _ptsLastModifiedDate ::
      !(Maybe POSIX),
    _ptsEnabled ::
      !(Maybe Bool),
    _ptsCreationDate ::
      !(Maybe POSIX),
    _ptsDescription ::
      !(Maybe Text),
    _ptsTemplateARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ProvisioningTemplateSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptsTemplateName' - The name of the fleet provisioning template.
--
-- * 'ptsLastModifiedDate' - The date when the fleet provisioning template summary was last modified.
--
-- * 'ptsEnabled' - True if the fleet provision template is enabled, otherwise false.
--
-- * 'ptsCreationDate' - The date when the fleet provisioning template summary was created.
--
-- * 'ptsDescription' - The description of the fleet provisioning template.
--
-- * 'ptsTemplateARN' - The ARN of the fleet provisioning template.
provisioningTemplateSummary ::
  ProvisioningTemplateSummary
provisioningTemplateSummary =
  ProvisioningTemplateSummary'
    { _ptsTemplateName =
        Nothing,
      _ptsLastModifiedDate = Nothing,
      _ptsEnabled = Nothing,
      _ptsCreationDate = Nothing,
      _ptsDescription = Nothing,
      _ptsTemplateARN = Nothing
    }

-- | The name of the fleet provisioning template.
ptsTemplateName :: Lens' ProvisioningTemplateSummary (Maybe Text)
ptsTemplateName = lens _ptsTemplateName (\s a -> s {_ptsTemplateName = a})

-- | The date when the fleet provisioning template summary was last modified.
ptsLastModifiedDate :: Lens' ProvisioningTemplateSummary (Maybe UTCTime)
ptsLastModifiedDate = lens _ptsLastModifiedDate (\s a -> s {_ptsLastModifiedDate = a}) . mapping _Time

-- | True if the fleet provision template is enabled, otherwise false.
ptsEnabled :: Lens' ProvisioningTemplateSummary (Maybe Bool)
ptsEnabled = lens _ptsEnabled (\s a -> s {_ptsEnabled = a})

-- | The date when the fleet provisioning template summary was created.
ptsCreationDate :: Lens' ProvisioningTemplateSummary (Maybe UTCTime)
ptsCreationDate = lens _ptsCreationDate (\s a -> s {_ptsCreationDate = a}) . mapping _Time

-- | The description of the fleet provisioning template.
ptsDescription :: Lens' ProvisioningTemplateSummary (Maybe Text)
ptsDescription = lens _ptsDescription (\s a -> s {_ptsDescription = a})

-- | The ARN of the fleet provisioning template.
ptsTemplateARN :: Lens' ProvisioningTemplateSummary (Maybe Text)
ptsTemplateARN = lens _ptsTemplateARN (\s a -> s {_ptsTemplateARN = a})

instance FromJSON ProvisioningTemplateSummary where
  parseJSON =
    withObject
      "ProvisioningTemplateSummary"
      ( \x ->
          ProvisioningTemplateSummary'
            <$> (x .:? "templateName")
            <*> (x .:? "lastModifiedDate")
            <*> (x .:? "enabled")
            <*> (x .:? "creationDate")
            <*> (x .:? "description")
            <*> (x .:? "templateArn")
      )

instance Hashable ProvisioningTemplateSummary

instance NFData ProvisioningTemplateSummary
