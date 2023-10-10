import { prismaClient } from "../src/prisma-client"

describe("Prisma Client", () => {
    it('should can create and select fields', async () => {
        const customer = await prismaClient.customer.create({
            data: {
                id: "rully",
                email: "rully@pzn.com",
                phone: "654612318976",
                name: "Rully Nugraha"
            },
            select: {
                id: true,
                name: true
            }
        });

        expect(customer.id).toBe("rully");
        expect(customer.name).toBe("Rully Nugraha");
        expect(customer.email).toBeUndefined();
        expect(customer.phone).toBeUndefined();

    });

    it('should can select fields', async () => {
        const customers = await prismaClient.customer.findMany({
            select: {
                id: true,
                name: true
            }
        });

        for (const customer of customers) {
            expect(customer.id).toBeDefined();
            expect(customer.name).toBeDefined();
            expect(customer.email).toBeUndefined();
            expect(customer.phone).toBeUndefined();
        }
    })
})