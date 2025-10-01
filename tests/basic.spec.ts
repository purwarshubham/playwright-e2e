import { test, expect } from '@playwright/test';

test('Validate Sum', {tag: ['@smoke']}, async ({ page }) => {
    let a = 2; 
    let b = 3
    let sum = a + b;
    console.log(sum);
    await expect(sum).toBe(5);
});

test('Validate Multiplication - Expecting failure', async ({ page }) => {
    await expect(2*3).toBe(5);

});
