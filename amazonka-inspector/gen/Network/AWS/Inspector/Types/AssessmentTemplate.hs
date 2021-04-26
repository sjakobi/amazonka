{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.AssessmentTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentTemplate where

import Network.AWS.Inspector.Types.Attribute
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an Amazon Inspector assessment template. This
-- data type is used as the response element in the
-- DescribeAssessmentTemplates action.
--
-- /See:/ 'newAssessmentTemplate' smart constructor.
data AssessmentTemplate = AssessmentTemplate'
  { -- | The Amazon Resource Name (ARN) of the most recent assessment run
    -- associated with this assessment template. This value exists only when
    -- the value of assessmentRunCount is greaterpa than zero.
    lastAssessmentRunArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the assessment template.
    arn :: Prelude.Text,
    -- | The name of the assessment template.
    name :: Prelude.Text,
    -- | The ARN of the assessment target that corresponds to this assessment
    -- template.
    assessmentTargetArn :: Prelude.Text,
    -- | The duration in seconds specified for this assessment template. The
    -- default value is 3600 seconds (one hour). The maximum value is 86400
    -- seconds (one day).
    durationInSeconds :: Prelude.Nat,
    -- | The rules packages that are specified for this assessment template.
    rulesPackageArns :: [Prelude.Text],
    -- | The user-defined attributes that are assigned to every generated finding
    -- from the assessment run that uses this assessment template.
    userAttributesForFindings :: [Attribute],
    -- | The number of existing assessment runs associated with this assessment
    -- template. This value can be zero or a positive integer.
    assessmentRunCount :: Prelude.Int,
    -- | The time at which the assessment template is created.
    createdAt :: Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AssessmentTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastAssessmentRunArn', 'assessmentTemplate_lastAssessmentRunArn' - The Amazon Resource Name (ARN) of the most recent assessment run
-- associated with this assessment template. This value exists only when
-- the value of assessmentRunCount is greaterpa than zero.
--
-- 'arn', 'assessmentTemplate_arn' - The ARN of the assessment template.
--
-- 'name', 'assessmentTemplate_name' - The name of the assessment template.
--
-- 'assessmentTargetArn', 'assessmentTemplate_assessmentTargetArn' - The ARN of the assessment target that corresponds to this assessment
-- template.
--
-- 'durationInSeconds', 'assessmentTemplate_durationInSeconds' - The duration in seconds specified for this assessment template. The
-- default value is 3600 seconds (one hour). The maximum value is 86400
-- seconds (one day).
--
-- 'rulesPackageArns', 'assessmentTemplate_rulesPackageArns' - The rules packages that are specified for this assessment template.
--
-- 'userAttributesForFindings', 'assessmentTemplate_userAttributesForFindings' - The user-defined attributes that are assigned to every generated finding
-- from the assessment run that uses this assessment template.
--
-- 'assessmentRunCount', 'assessmentTemplate_assessmentRunCount' - The number of existing assessment runs associated with this assessment
-- template. This value can be zero or a positive integer.
--
-- 'createdAt', 'assessmentTemplate_createdAt' - The time at which the assessment template is created.
newAssessmentTemplate ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'assessmentTargetArn'
  Prelude.Text ->
  -- | 'durationInSeconds'
  Prelude.Natural ->
  -- | 'assessmentRunCount'
  Prelude.Int ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  AssessmentTemplate
newAssessmentTemplate
  pArn_
  pName_
  pAssessmentTargetArn_
  pDurationInSeconds_
  pAssessmentRunCount_
  pCreatedAt_ =
    AssessmentTemplate'
      { lastAssessmentRunArn =
          Prelude.Nothing,
        arn = pArn_,
        name = pName_,
        assessmentTargetArn = pAssessmentTargetArn_,
        durationInSeconds =
          Prelude._Nat Lens.# pDurationInSeconds_,
        rulesPackageArns = Prelude.mempty,
        userAttributesForFindings = Prelude.mempty,
        assessmentRunCount = pAssessmentRunCount_,
        createdAt = Prelude._Time Lens.# pCreatedAt_
      }

-- | The Amazon Resource Name (ARN) of the most recent assessment run
-- associated with this assessment template. This value exists only when
-- the value of assessmentRunCount is greaterpa than zero.
assessmentTemplate_lastAssessmentRunArn :: Lens.Lens' AssessmentTemplate (Prelude.Maybe Prelude.Text)
assessmentTemplate_lastAssessmentRunArn = Lens.lens (\AssessmentTemplate' {lastAssessmentRunArn} -> lastAssessmentRunArn) (\s@AssessmentTemplate' {} a -> s {lastAssessmentRunArn = a} :: AssessmentTemplate)

-- | The ARN of the assessment template.
assessmentTemplate_arn :: Lens.Lens' AssessmentTemplate Prelude.Text
assessmentTemplate_arn = Lens.lens (\AssessmentTemplate' {arn} -> arn) (\s@AssessmentTemplate' {} a -> s {arn = a} :: AssessmentTemplate)

-- | The name of the assessment template.
assessmentTemplate_name :: Lens.Lens' AssessmentTemplate Prelude.Text
assessmentTemplate_name = Lens.lens (\AssessmentTemplate' {name} -> name) (\s@AssessmentTemplate' {} a -> s {name = a} :: AssessmentTemplate)

-- | The ARN of the assessment target that corresponds to this assessment
-- template.
assessmentTemplate_assessmentTargetArn :: Lens.Lens' AssessmentTemplate Prelude.Text
assessmentTemplate_assessmentTargetArn = Lens.lens (\AssessmentTemplate' {assessmentTargetArn} -> assessmentTargetArn) (\s@AssessmentTemplate' {} a -> s {assessmentTargetArn = a} :: AssessmentTemplate)

-- | The duration in seconds specified for this assessment template. The
-- default value is 3600 seconds (one hour). The maximum value is 86400
-- seconds (one day).
assessmentTemplate_durationInSeconds :: Lens.Lens' AssessmentTemplate Prelude.Natural
assessmentTemplate_durationInSeconds = Lens.lens (\AssessmentTemplate' {durationInSeconds} -> durationInSeconds) (\s@AssessmentTemplate' {} a -> s {durationInSeconds = a} :: AssessmentTemplate) Prelude.. Prelude._Nat

-- | The rules packages that are specified for this assessment template.
assessmentTemplate_rulesPackageArns :: Lens.Lens' AssessmentTemplate [Prelude.Text]
assessmentTemplate_rulesPackageArns = Lens.lens (\AssessmentTemplate' {rulesPackageArns} -> rulesPackageArns) (\s@AssessmentTemplate' {} a -> s {rulesPackageArns = a} :: AssessmentTemplate) Prelude.. Prelude._Coerce

-- | The user-defined attributes that are assigned to every generated finding
-- from the assessment run that uses this assessment template.
assessmentTemplate_userAttributesForFindings :: Lens.Lens' AssessmentTemplate [Attribute]
assessmentTemplate_userAttributesForFindings = Lens.lens (\AssessmentTemplate' {userAttributesForFindings} -> userAttributesForFindings) (\s@AssessmentTemplate' {} a -> s {userAttributesForFindings = a} :: AssessmentTemplate) Prelude.. Prelude._Coerce

-- | The number of existing assessment runs associated with this assessment
-- template. This value can be zero or a positive integer.
assessmentTemplate_assessmentRunCount :: Lens.Lens' AssessmentTemplate Prelude.Int
assessmentTemplate_assessmentRunCount = Lens.lens (\AssessmentTemplate' {assessmentRunCount} -> assessmentRunCount) (\s@AssessmentTemplate' {} a -> s {assessmentRunCount = a} :: AssessmentTemplate)

-- | The time at which the assessment template is created.
assessmentTemplate_createdAt :: Lens.Lens' AssessmentTemplate Prelude.UTCTime
assessmentTemplate_createdAt = Lens.lens (\AssessmentTemplate' {createdAt} -> createdAt) (\s@AssessmentTemplate' {} a -> s {createdAt = a} :: AssessmentTemplate) Prelude.. Prelude._Time

instance Prelude.FromJSON AssessmentTemplate where
  parseJSON =
    Prelude.withObject
      "AssessmentTemplate"
      ( \x ->
          AssessmentTemplate'
            Prelude.<$> (x Prelude..:? "lastAssessmentRunArn")
            Prelude.<*> (x Prelude..: "arn")
            Prelude.<*> (x Prelude..: "name")
            Prelude.<*> (x Prelude..: "assessmentTargetArn")
            Prelude.<*> (x Prelude..: "durationInSeconds")
            Prelude.<*> ( x Prelude..:? "rulesPackageArns"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "userAttributesForFindings"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "assessmentRunCount")
            Prelude.<*> (x Prelude..: "createdAt")
      )

instance Prelude.Hashable AssessmentTemplate

instance Prelude.NFData AssessmentTemplate
